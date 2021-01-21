//
//  Copyright © 2021 pocket-ninja. All rights reserved.
//

import UIKit

struct Level {
    var target: UIImage
    var stickers: [Sticker]
}

struct Sticker {
    var image: UIImage
    var scale: CGFloat = 1.0
}
