//
//  Copyright © 2021 pocket-ninja. All rights reserved.
//

import UIKit
import SnapKit

protocol GameViewControllerDelegate: AnyObject {
    func gameViewController(_ controller: GameViewController, didFinish level: Level)
}

final class GameViewController: BaseViewController {
    weak var delegate: GameViewControllerDelegate?
    
    struct DragState {
        var sticker: UIImage?
        var position: CGPoint
    }
    
    init(level: Level) {
        self.level = level
        self.mainImageView = UIImageView(image: level.mainImage)
        self.stickerViews = level.stickers.map { UIImageView(image: $0) }
        super.init()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(workspace)
        workspace.snp.makeConstraints { make in
            let ratio: CGFloat = 9.0 / 16.0
            make.centerX.centerY.equalToSuperview()
            make.width.equalToSuperview()
            make.height.equalTo(workspace.snp.width).dividedBy(ratio)
        }
        
        workspace.addSubview(mainImageView)
        mainImageView.contentMode = .scaleAspectFit
        mainImageView.snp.makeConstraints { make in
            let ratio = mainImageView.image?.size.ratio ?? 1
            make.width.top.centerX.equalToSuperview()
            make.height.equalTo(mainImageView.snp.width).dividedBy(ratio)
        }
            
        stickerViews.forEach { stickerView in
            workspace.addSubview(stickerView)
            stickerView.contentMode = .scaleAspectFit
        }
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        layoutStickers()
    }
    
    private func layoutStickers() {
        guard stickerViews.count > 0 else {
            return
        }

        workspace.layoutIfNeeded()
        
        let ratio: CGFloat = 540.0 / 300.0
        let stickerHeight = workspace.bounds.width / ratio
        let stickerWidth = workspace.bounds.width / CGFloat(stickerViews.count)
        
        stickerViews.enumerated().forEach { index, stickerView in
            stickerView.frame = CGRect(
                x: CGFloat(index) * stickerWidth,
                y: workspace.bounds.height - stickerHeight,
                width: stickerWidth,
                height: stickerHeight
            )
        }
    }
    
    @objc private func onPan(_ recognizer: UILongPressGestureRecognizer) {
        let point = recognizer.location(in: recognizer.view)
        
    }
    
    private lazy var panRecognizer = UILongPressGestureRecognizer(
        target: self,
        action: #selector(onPan(_:))
    )
    
    @Published private var dragState: DragState = .empty
    private let stickerViews: [UIImageView]
    private let mainImageView: UIImageView
    private let handView = UIImageView(image: A.hand3d.image)
    private let workspace = UIView()
    private let level: Level
}

private extension GameViewController.DragState {
    static var empty: GameViewController.DragState {
        return GameViewController.DragState(sticker: nil, position: .zero)
    }
    
    var isDraging: Bool {
        sticker != nil
    }
}
