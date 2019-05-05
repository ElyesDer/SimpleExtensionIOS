
//
//  Created by wildchild on 4/14/19.
//  Copyright © 2019 Derouich. All rights reserved.
//

import UIKit

class RoundedUITextField: UITextField {
    
    /*
     Usage :
     1 - Drag and drop UITextfield into your ViewController
     2 - Make RoundedUITextField it's class 
    */

    let padding = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 5)

    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }

    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }

    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
}
