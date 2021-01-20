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
    
    init(level: Level) {
        self.level = level
        super.init()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(mainImageView)
        mainImageView.image = level.mainImage
        mainImageView.snp.makeConstraints { make in
            let ratio = mainImageView.image?.size.ratio ?? 1
            make.width.top.centerX.equalToSuperview()
            make.height.equalTo(mainImageView.snp.width).dividedBy(ratio)
        }
    }
    
    private let mainImageView = UIImageView()
    private let level: Level
}
