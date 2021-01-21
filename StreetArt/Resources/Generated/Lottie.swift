// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen


import Lottie
import UIKit

internal enum LottieFile: String {
    case confettiAnimation = "confetti_animation.json"
    case fireworksAnimation = "fireworks_animation.json"
}

extension LottieFile {
    var animation: Animation? {
        Animation.named(animationName)
    }

    var animationName: String {
        rawValue.replacingOccurrences(of: ".json", with: "")
    }
}
extension AnimationView {
    convenience init(file: LottieFile, loop: LottieLoopMode = .playOnce, bundle: Bundle = .main) {
        guard let path = bundle.path(forResource: file.rawValue, ofType: nil) else {
            self.init()
            return
        }

        self.init(filePath: path)
        self.loopMode = loop
        self.contentMode = .scaleAspectFit
    }
}

