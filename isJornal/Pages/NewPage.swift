//
//  NewPage.swift
//  isJornal
//
//  Created by Nikita Molodorya on 14.11.2021.
//

import UIKit

protocol PageShareOne {
    func navigationTitle(text: String)
}

class NewPage: UIViewController, ShareData {
   
    @IBOutlet weak var photo: UIImageView!
    
    @IBOutlet weak var pageName: UITextField!
    @IBOutlet weak var pageTheme: UITextField!
    
    @IBOutlet weak var pageText: UITextView!
    
    
    
    var delegate: PageShareOne?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pageText.delegate = self
        pageText.layer.cornerRadius = 10
    }

    
    // AlertController
    private func showAlertController(title: String, message: String, titleButton: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: titleButton, style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func publication(_ sender: UIBarButtonItem) {
        showAlertController(title: "Опубликовано", message: "Test", titleButton: "OK")
        
    }
}

extension NewPage: UITextViewDelegate {
    func textViewShouldBeginEditing(_ textView: UITextView) -> Bool {
        guard textView == pageText else { return true }
        
        let vc = self.storyboard!.instantiateViewController(withIdentifier: "EditPages") as! EditPages
        vc.delegate = self
        
        
        self.delegate?.navigationTitle(text: pageName.text ?? "")
        
        let navController = UINavigationController(rootViewController: vc) // Creating a navigation controller with VC1 at the root of the navigation stack.
        navController.modalPresentationStyle = .fullScreen
        self.present(navController, animated:true, completion: nil)
        

        return false
    }
    
    func shareTextPage(text: String) {
        pageText.text = text
    }
    
    func shareTextTitle(text: String) {
        navigationItem.title = text
    }
    
    
}
