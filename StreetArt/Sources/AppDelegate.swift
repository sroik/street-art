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
                target: A.minionMain.image,
                stickers: [
                    Sticker(image: A.minion1.image, scale: 0.95),
                    Sticker(image: A.minion2.image, scale: 0.9)
                ]
            ),
            Level(
                target: A.libertyMain.image,
                stickers: [
                    Sticker(image: A.liberty1.image, scale: 0.9),
                    Sticker(image: A.liberty2.image, scale: 0.9)
                ]
            ),
            Level(
                target: A.ufoMain.image,
                stickers: [
                    Sticker(image: A.ufo1.image, scale: 0.8),
                    Sticker(image: A.ufo2.image, scale: 0.95)
                ]
            )
        ]
    }
}
