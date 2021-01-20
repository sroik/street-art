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

        let windowFrame = CGRect(x: 0, y: 0, width: 9, height: 16)
            .fitted(in: UIScreen.main.bounds)
        
        window = UIWindow(frame: windowFrame)
        window?.rootViewController = BaseViewController()
        window?.makeKeyAndVisible()

        routeToNextLevel()
        
        return true
    }
    
    private func routeToNextLevel() {
        guard let next = levels.first else {
            levels = Level.all()
            routeToNextLevel()
            return
        }
        
        levels.removeFirst()
        let gameViewController = GameViewController(level: next)
        gameViewController.delegate = self
        window?.rootViewController = gameViewController
    }
    
    private var levels: [Level] = []
}

extension AppDelegate: GameViewControllerDelegate {
    func gameViewController(_ controller: GameViewController, didFinish level: Level) {
        routeToNextLevel()
    }
}

extension Level {
    static func all() -> [Level] {
        [
            Level(
                mainImage: A.minionMain.image,
                stickers: [A.minion1.image, A.minion2.image]
            ),
            Level(
                mainImage: A.libertyMain.image,
                stickers: [A.liberty1.image, A.liberty2.image]
            ),
            Level(
                mainImage: A.ufoMain.image,
                stickers: [A.ufo1.image, A.ufo2.image]
            )
        ]
    }
}
