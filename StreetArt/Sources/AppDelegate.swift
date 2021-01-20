//
//  Copyright © 2021 pocket-ninja. All rights reserved.
//

import UIKit
import UtilsCore

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions options: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        if Environment.isTests {
            return false
        }

        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = BaseViewController()
        window?.makeKeyAndVisible()

        return true
    }
}
