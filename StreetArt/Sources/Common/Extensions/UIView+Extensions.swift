//
//  Copyright © 2020 pocket-ninja. All rights reserved.
//

import SnapKit
import UIKit

extension UIView {
    typealias Completion = (Bool) -> Void

    func layout(in superview: UIView, using layout: (ConstraintMaker) -> Void = { _ in }) {
        superview.addSubview(self)
        snp.makeConstraints(layout)
    }

    func fill(in superview: UIView, insets: UIEdgeInsets = .zero) {
        layout(in: superview) { make in
            make.edges.equalTo(superview).inset(insets)
        }
    }

    func fit(in superview: UIView, ratio: CGFloat, multiplier: CGFloat = 1.0) {
        layout(in: superview) { make in
            make.size.equalTo(superview).multipliedBy(multiplier).priority(.medium)
            make.size.lessThanOrEqualTo(superview).multipliedBy(multiplier).priority(.required)
            make.width.equalTo(snp.height).multipliedBy(ratio).priority(.required)
            make.center.equalTo(superview)
        }
    }

    func setResizeResistance(priority: UILayoutPriority) {
        setContentCompressionResistancePriority(priority, for: .vertical)
        setContentCompressionResistancePriority(priority, for: .horizontal)
        setContentHuggingPriority(priority, for: .vertical)
        setContentHuggingPriority(priority, for: .horizontal)
    }
    
    func move(to point: CGPoint, duration: TimeInterval, completion: Completion? = nil) {
        move(
            to: CGRect(center: point, size: bounds.size),
            duration: duration,
            completion: completion
        )
    }
    
    func move(to rect: CGRect, duration: TimeInterval, completion: Completion? = nil) {
        let animations = {
            self.bounds = CGRect(size: rect.size)
            self.center = rect.center
        }
        
        UIView.animate(
            withDuration: duration,
            delay: 0,
            options: .curveEaseInOut,
            animations: animations,
            completion: completion
        )
    }
    
    func remove(after interval: TimeInterval) {
        DispatchQueue.main.after(interval, execute: removeFromSuperview)
    }

    static func spring(
        delay: TimeInterval = 0,
        duration: TimeInterval = 0.25,
        damping: CGFloat = 1,
        initialVelocity: CGFloat = 0,
        options: UIView.AnimationOptions = .curveEaseInOut,
        animations: @escaping () -> Void,
        completion: Completion? = nil
    ) {
        UIView.animate(
            withDuration: duration,
            delay: delay,
            usingSpringWithDamping: damping,
            initialSpringVelocity: initialVelocity,
            options: options,
            animations: animations,
            completion: completion
        )
    }
    
    func fade(
        from: CGFloat? = nil,
        to: CGFloat,
        delay: TimeInterval = 0,
        duration: TimeInterval = 0.25,
        then completion: Completion? = nil
    ) {
        alpha = from ?? alpha
        UIView.animate(
            withDuration: duration,
            delay: delay,
            options: .curveLinear,
            animations: { self.alpha = to },
            completion: completion
        )
    }
    
    func scale(
        from: CGFloat? = nil,
        to: CGFloat,
        delay: TimeInterval = 0,
        duration: TimeInterval = 0.25,
        then completion: Completion? = nil
    ) {
        if let value = from {
            transform = CGAffineTransform(scaleX: value, y: value)
        }
        
        UIView.animate(
            withDuration: duration,
            delay: delay,
            options: .curveLinear,
            animations: { self.transform = CGAffineTransform(scaleX: to, y: to) },
            completion: completion
        )
    }
}

extension Array where Element: UIView {
    func removeFromSuperviews() {
        forEach {
            $0.removeFromSuperview()
        }
    }
}
