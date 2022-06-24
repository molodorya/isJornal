//
//  Extensions.swift
//  isJornal
//
//  Created by Nikita Molodorya on 15.11.2021.
//

import UIKit
import Foundation


// Disable keyboard
extension UIViewController {
    func hideKeyboardOnTap() {
        self.view.addGestureRecognizer(self.endEditingRecognizer())
        self.navigationController?.navigationBar.addGestureRecognizer(self.endEditingRecognizer())
    }

    private func endEditingRecognizer() -> UIGestureRecognizer {
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(self.view.endEditing(_:)))
        tap.cancelsTouchesInView = false
        return tap
    }
}
