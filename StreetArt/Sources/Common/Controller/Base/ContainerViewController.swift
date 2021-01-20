//
//  Copyright © 2020 pocket-ninja. All rights reserved.
//

import UIKit

class ContainerViewController: BaseViewController {
    override var prefersStatusBarHidden: Bool {
        rootViewController.prefersStatusBarHidden
    }

    override var shouldAutorotate: Bool {
        rootViewController.shouldAutorotate
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        rootViewController.supportedInterfaceOrientations
    }

    var rootViewController: UIViewController {
        didSet {
            oldValue.dropFromParent()
            layoutRootViewController()
        }
    }

    init(root: UIViewController = BaseViewController()) {
        rootViewController = root
        super.init()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .clear
        layoutRootViewController()
    }

    private func layoutRootViewController() {
        if rootViewController.parent == nil {
            add(fullscreenChild: rootViewController)
        }
    }
}
