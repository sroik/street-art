//
//  Copyright © 2021 sroik. All rights reserved.
//

import UIKit

final class StickerView: UIView {
    let sticker: Sticker
    
    init(sticker: Sticker) {
        self.sticker = sticker
        super.init(frame: .zero)
        
        imageView.image = sticker.image
        imageView.contentMode = .scaleAspectFit
        imageView.fill(in: self)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private let imageView = UIImageView()
}
