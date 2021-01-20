//
//  Copyright © 2020 pocket-ninja. All rights reserved.
//

import UIKit

class BaseNavigationController: UINavigationController {
    override var prefersStatusBarHidden: Bool {
        topViewController?.prefersStatusBarHidden ?? true
    }

    override var shouldAutorotate: Bool {
        topViewController?.shouldAutorotate ?? false
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        topViewController?.supportedInterfaceOrientations ?? [.all]
    }

    override var prefersHomeIndicatorAutoHidden: Bool {
        true
    }

    var strongDelegate: UINavigationControllerDelegate? {
        didSet {
            delegate = strongDelegate
        }
    }

    init(root rootViewController: UIViewController = BaseViewController()) {
        super.init(nibName: nil, bundle: nil)
        self.viewControllers = [rootViewController]
    }

    @available(*, unavailable)
    required convenience init?(coder aDecoder: NSCoder) {
        self.init()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setNavigationBarHidden(true, animated: false)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.isEnabled = false
        setNavigationBarHidden(true, animated: false)
    }
}
