//
//  Copyright © 2020 pocket-ninja. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    let backgroundView = UIImageView()

    override var prefersStatusBarHidden: Bool {
        true
    }

    override var prefersHomeIndicatorAutoHidden: Bool {
        true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        [.portrait, .portraitUpsideDown]
    }

    var strongTransitioningDelegate: UIViewControllerTransitioningDelegate? {
        didSet {
            transitioningDelegate = strongTransitioningDelegate
        }
    }

    init() {
        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable)
    required convenience init?(coder aDecoder: NSCoder) {
        self.init()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        isAppeared = true

        if !isFirstAppeared {
            isFirstAppeared = true
            viewDidFirstAppear(animated)
        }
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        isAppeared = false
    }

    func viewDidFirstAppear(_ animated: Bool) {
        /* exists to be overridden */
    }

    private(set) var isAppeared: Bool = false
    private(set) var isFirstAppeared: Bool = false
}
