//
//  Profile.swift
//  isJornal
//
//  Created by Nikita Molodorya on 14.11.2021.
//

import UIKit

class Profile: UIViewController {
    
    
    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var prompt: UILabel!
    
    // AlertController
    private func showAlertController(title: String, message: String, titleButton: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: titleButton, style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        photo.layer.cornerRadius = photo.frame.height / 2
      
    }
    
    @IBAction func editProfile(_ sender: UIBarButtonItem) {
        showAlertController(title: "Изменено", message: "Test", titleButton: "OK")
    }
    
}
