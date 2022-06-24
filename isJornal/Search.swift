//
//  Search.swift
//  isJornal
//
//  Created by Nikita Molodorya on 14.11.2021.
//

import UIKit

class Search: UIViewController {
    
    @IBOutlet weak var searchController: UISearchBar!
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.delegate = self
        tableView.dataSource = self
        
        self.tableView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        
        
        self.navigationItem.title = "Поиск"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
      
    }

    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        self.navigationController?.navigationBar.prefersLargeTitles = false
    }
}



extension Search: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "searchCell", for: indexPath)
        
      
        
        return cell
    }
}
