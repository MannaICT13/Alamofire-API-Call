//
//  ViewController.swift
//  Alamofire API Call
//
//  Created by Sharetrip-iOS on 17/08/2021.
//

import UIKit
class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    var serviceInstance = Service()
    
   @IBOutlet weak var tableView : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        serviceInstance.vc = self
        serviceInstance.apiServiceFunc()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return serviceInstance.users.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : UITableViewCell = self.tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = serviceInstance.users[indexPath.row].email
        return cell
        
    }
}

