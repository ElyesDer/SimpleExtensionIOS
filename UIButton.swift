
//
//  Created by Derouich on 4/14/19.
//  Copyright © 2019 wildchild. All rights reserved.
//

import UIKit

extension UIButton {
    
    // this will configure UIButton with rounded corner
    
    func configure(
        color: UIColor = .blue,
        font: UIFont = UIFont.boldSystemFont(ofSize: 12),
        roundedCorners : Bool = false
        ) {
        self.setTitleColor(color, for: .normal)
        self.titleLabel?.font = font
        self.layer.borderColor = color.cgColor
        if roundedCorners {
            self.layer.borderWidth = 1.0
            self.layer.cornerRadius = 5.0
        }
        
    }

    func configure(icon: UIImage, color: UIColor? = nil) {
        self.setImage(icon, for: .normal)
        if let color = color {
            tintColor = color
        }
    }
    
    /*
     More advanced UIButton configuration
     */
    func configure(color: UIColor = .blue,
                   font: UIFont = UIFont.boldSystemFont(ofSize: 12),
                   cornerRadius: CGFloat,
                   borderColor: UIColor? = nil,
                   backgroundColor: UIColor,
                   borderWidth: CGFloat? = nil) {
        self.setTitleColor(color, for: .normal)
        self.titleLabel?.font = font
        self.backgroundColor = backgroundColor
        if let borderColor = borderColor {
            self.layer.borderColor = borderColor.cgColor
        }
        if let borderWidth = borderWidth {
            self.layer.borderWidth = borderWidth
        }
        self.layer.cornerRadius = cornerRadius
    }
}
