//
//  EditPages.swift
//  isJornal
//
//  Created by Nikita Molodorya on 14.11.2021.
//

import UIKit



protocol ShareData {
    func shareTextPage(text: String)
    func shareTextTitle(text: String)
}
 

class EditPages: UIViewController {
    
    
    
    @IBOutlet weak var textView: UITextView!
    
    var delegate: ShareData?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        textView.showsVerticalScrollIndicator = true
        
        textView.textContainerInset = UIEdgeInsets(top: 50, left: 25, bottom: 0, right: 25)
   
        self.hideKeyboardOnTap()
        
        let appearance = UINavigationBarAppearance()
        appearance.titleTextAttributes = [.foregroundColor: UIColor.darkGray]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.darkGray]

        navigationItem.standardAppearance = appearance
        navigationItem.scrollEdgeAppearance = appearance
    }
    
    

    // AlertController
    private func showAlertController(title: String, message: String, titleButton: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: titleButton, style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    

    
    
    @IBAction func keyboardDisable(_ sender: UIBarButtonItem) {
        hideKeyboardOnTap()
    }
    
    
    @IBAction func done(_ sender: UIBarButtonItem) {
        self.delegate?.shareTextPage(text: textView.text ?? "Error")
        
        dismiss(animated: true) {
            print("1")
        }
    }
    
  
    
}





