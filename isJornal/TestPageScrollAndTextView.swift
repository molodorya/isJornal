//
//  TestPageScrollAndTextView.swift
//  isJornal
//
//  Created by Nikita Molodorya on 23.06.2022.
//

import UIKit

class TestPageScrollAndTextView: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet weak var contentViewHeight: NSLayoutConstraint!
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "123"
        
         
        
        
        textView.text = textForPage
        textView.adjustUITextViewHeight()
        
        contentViewHeight.constant = textView.frame.height + 300
        
        textView.textColor = .darkGray
        textView.backgroundColor = .clear
        
        view.backgroundColor = UIColor.init(red: 251/255, green: 251/255, blue: 251/255, alpha: 1)
        contentView.backgroundColor = UIColor.init(red: 251/255, green: 251/255, blue: 251/255, alpha: 1)
    }
    
    
}
extension UITextView {
    func adjustUITextViewHeight() {
        self.translatesAutoresizingMaskIntoConstraints = true
        self.sizeToFit()
        self.isScrollEnabled = false
    }
}
