//
//  ViewController.swift
//  isJornal
//
//  Created by Nikita Molodorya on 07.11.2021.
//

import UIKit

class Home: UIViewController {
    
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var userImage: UIImageView!
    
    @IBOutlet weak var btnUser: UIButton!
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let navigationBar = self.navigationController?.navigationBar
        navigationBar?.setBackgroundImage(UIImage(), for: .default)
        navigationBar?.shadowImage = UIImage()
        navigationBar?.backgroundColor = UIColor.clear
        
        headerView.layer.cornerRadius = 35
        headerView.layer.borderWidth = 0.1
        headerView.layer.borderColor = UIColor.black.cgColor
        
        headerView.layer.shadowColor = UIColor.black.cgColor
        headerView.layer.shadowOffset = .zero
        headerView.layer.shadowOpacity = 0.1
        headerView.layer.shadowRadius = 5
        
        
        userImage.layer.cornerRadius = 30
        userImage.layer.borderWidth = 0.1
        userImage.layer.borderColor = UIColor.black.cgColor
        userImage.contentMode = .scaleAspectFill
        
        btnUser.contentHorizontalAlignment = .left
        
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.showsVerticalScrollIndicator = false
       
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.navigationController?.navigationBar.prefersLargeTitles = false
    }
    
}

extension Home: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 340
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "page") else { return }
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "homeCell", for: indexPath) as! HomeCell
        
        return cell
    }
}


// Cell class
class HomeCell: UITableViewCell {
    
    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var heading: UILabel!
    @IBOutlet weak var prompt: UILabel!
    @IBOutlet weak var user: UIButton!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var footerView: UIView!
    
    override func awakeFromNib() {
        
        
        photo.layer.cornerRadius = 10
        footerView.isHidden = true
        
    }
    
}
