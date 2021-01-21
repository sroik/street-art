//
//  Copyright © 2020 pocket-ninja. All rights reserved.
//

import UIKit

extension CALayer {
    func shake(duration: TimeInterval = 0.5, translation: CGFloat = 10) {
        let animation = CAKeyframeAnimation(keyPath: .xTranslation)
        animation.duration = duration
        animation.values = [
            -translation, translation,
            -translation / 2, translation / 2,
            -translation / 4, translation / 4,
            0.0
        ]
        removeAnimation(forKey: .xTranslation)
        add(animation, forKey: .xTranslation)
    }

    func scale(to: CGFloat, duration: TimeInterval = 0.25) {
        let animation = CABasicAnimation(keyPath: .transform)
        animation.duration = duration
        animation.fromValue = transform
        animation.toValue = CATransform3DMakeScale(to, to, to)
        
        transform = CATransform3DMakeScale(to, to, to)
        removeAnimation(forKey: .transformScale)
        add(animation, forKey: .transformScale)
    }
    
    func pulsate(scale: CGFloat, duration: TimeInterval) {
        let animation = CAKeyframeAnimation(keyPath: .transform)
        let start = transform
        let end = CATransform3DScale(transform, scale, scale, 1)
        animation.values = [start, end, start]
        animation.duration = duration
        animation.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
        removeAnimation(forKey: .transform)
        add(animation, forKey: .transform)
    }

    func rotate(duration: TimeInterval, times: Int = .max) {
        let animation = CABasicAnimation(keyPath: .transformRotation)
        animation.duration = duration
        animation.repeatCount = Float(times)
        animation.fromValue = 0
        animation.toValue = CGFloat.pi * 2

        removeAnimation(forKey: .transformRotation)
        add(animation, forKey: .transformRotation)
    }
}

extension String {
    static let transform = "transform"
    static let transformRotation: String = "transform.rotation"
    static let transformScale: String = "transform.scale"
    static let yTranslation: String = "transform.translation.y"
    static let xTranslation: String = "transform.translation.x"
}
