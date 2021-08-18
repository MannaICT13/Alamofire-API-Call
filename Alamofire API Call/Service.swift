//
//  Service.swift
//  Alamofire API Call
//
//  Created by Sharetrip-iOS on 17/08/2021.
//

import Foundation
import Alamofire

class Service {
    
 
    var users = [Users]()
    weak var vc : ViewController?
    
    func apiServiceFunc(){
        
        let urlString =  "https://jsonplaceholder.typicode.com/users"
        AF.request(urlString).response{(response) in
            
            guard let data = response.data else{return}
            
            do{
                self.users = try JSONDecoder().decode([Users].self, from: data)
                
                DispatchQueue.main.async {
                    for  x in self.users{
                        print(x.address.geo.longitude)
                        self.vc?.tableView.reloadData()
                    }
                }
            }catch let err {
                print(err.localizedDescription)
                return
            }
            
            
        }
        
        
        
        
        
    }
    
    
    
    
    
    
}
