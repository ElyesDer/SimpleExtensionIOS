
//
//  Created by Derouich on 4/14/19.
//  Copyright © 2019 wildchild. All rights reserved.
//

import UIKit

extension UIViewController {
    
    /*
         Usage:
         From UIViewController do
         self.hideKeyboardWhenTappedAround
     */

    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }

    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
