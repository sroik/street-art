//
//  Copyright © 2021 pocket-ninja. All rights reserved.
//

import UIKit
import SnapKit
import Lottie

protocol GameViewControllerDelegate: AnyObject {
    func gameViewController(_ controller: GameViewController, didFinish level: Level)
}

final class GameViewController: BaseViewController {
    weak var delegate: GameViewControllerDelegate?
    
    struct DragState {
        var sticker: StickerView?
        var position: CGPoint
        var anchor: CGPoint
    }
    
    init(level: Level) {
        self.level = level
        self.targetView = UIImageView(image: level.target)
        self.stickerViews = level.stickers.map { StickerView(sticker: $0) }
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
        
        workspace.addSubview(targetView)
        targetView.contentMode = .scaleAspectFit
        targetView.snp.makeConstraints { make in
            let ratio = targetView.image?.size.ratio ?? 1
            make.width.top.centerX.equalToSuperview()
            make.height.equalTo(targetView.snp.width).dividedBy(ratio)
        }
            
        stickerViews.forEach { stickerView in
            workspace.addSubview(stickerView)
            stickerView.contentMode = .scaleAspectFit
        }
        
        panRecognizer.minimumPressDuration = 0
        panRecognizer.delegate = self
        workspace.addGestureRecognizer(panRecognizer)
        
        tapRecognizer.numberOfTapsRequired = 2
        tapRecognizer.delegate = self
        workspace.addGestureRecognizer(tapRecognizer)
        
        handView.contentMode = .scaleAspectFit
        handView.isHidden = true
        workspace.addSubview(handView)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        layoutStickers()
    }
    
    private func win() {
        isWon = true
        workspace.layer.pulsate(scale: 1.1, duration: 0.375)
        
        let animationView = AnimationView(file: .confettiAnimation, loop: .loop)
        animationView.fill(in: workspace)
        animationView.contentMode = .scaleAspectFill
        animationView.play()
        
        DispatchQueue.main.after(3.0) {
            self.delegate?.gameViewController(self, didFinish: self.level)
        }
    }
    
    private func layoutStickers() {
        guard stickerViews.count > 0, !isWon else {
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
    
    @objc private func onTap(_ recognizer: UITapGestureRecognizer) {
        let point = recognizer.location(in: recognizer.view)
        if stickerView(intersecting: point) == nil {
            win()
        }
    }
    
    @objc private func onPan(_ recognizer: UILongPressGestureRecognizer) {
        let point = recognizer.location(in: recognizer.view)
        
        switch recognizer.state {
        case .began:
            guard let stickerView = self.stickerView(intersecting: point) else {
                return
            }
            
            dragState = DragState(
                sticker: stickerView,
                position: point,
                anchor: point.translation(to: stickerView.center)
            )
            
            capture()
            moveHand(to: point)
            
        case .changed where dragState.isDraging:
            dragState.position = point
            dragState.sticker?.center = dragState.stickerCenter
            moveHand(to: point)
            
        default:
            releaseCaptured()
            hideHand()
            dragState = .empty
        }
    }
    
    private func capture() {
        guard let stickerView = dragState.sticker else {
            return
        }
        
        workspace.bringSubviewToFront(stickerView)
        stickerView.move(to: dragState.stickerCenter, duration: 0.15)
        stickerView.layer.scale(to: stickerView.sticker.scale * 1.2)
    }
    
    private func releaseCaptured() {
        guard let stickerView = dragState.sticker else {
            return
        }
        
        stickerView.center = dragState.stickerCenter
        stickerView.layer.scale(to: stickerView.sticker.scale, duration: 0.15)
    }
    
    private func hideHand() {
        handView.isHidden = true
    }
    
    private func moveHand(to point: CGPoint) {
        workspace.bringSubviewToFront(handView)
        handView.isHidden = false
        handView.frame = CGRect(
            x: point.x - 75,
            y: point.y,
            width: 150,
            height: 150
        )
    }
    
    private func stickerView(intersecting point: CGPoint, ignoring: UIView? = nil) -> StickerView? {
        stickerViews
            .sorted { $0.center.distance(to: point) < $1.center.distance(to: point) }
            .filter { $0 != ignoring }
            .first { $0.frame.contains(point) }
    }
    
    private lazy var panRecognizer = UILongPressGestureRecognizer(
        target: self,
        action: #selector(onPan(_:))
    )
    
    private lazy var tapRecognizer = UITapGestureRecognizer(
        target: self,
        action: #selector(onTap(_:))
    )
    
    @Published private var dragState: DragState = .empty
    private let stickerViews: [StickerView]
    private let targetView: UIImageView
    private let handView = UIImageView(image: A.hand3d.image)
    private let workspace = UIView()
    private let level: Level
    private var isWon: Bool = false
}

extension GameViewController: UIGestureRecognizerDelegate {
    func gestureRecognizer(
        _ gestureRecognizer: UIGestureRecognizer,
        shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer
    ) -> Bool {
        return true
    }
}

private extension GameViewController.DragState {
    static var empty: GameViewController.DragState {
        return GameViewController.DragState(
            sticker: nil,
            position: .zero,
            anchor: .zero
        )
    }
    
    var isDraging: Bool {
        sticker != nil
    }
    
    var stickerCenter: CGPoint {
        position.translated(by: anchor)
    }
}
