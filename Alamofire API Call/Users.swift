//
//  Users.swift
//  Alamofire API Call
//
//  Created by Sharetrip-iOS on 17/08/2021.
//

import Foundation

struct Users : Codable {
    
    var id : Int?
    var name : String?
    var email : String?
    var address : Address
    
    enum CodingKeys : String,CodingKey{
        case id
        case name
        case email
        case address
        
    }
    
}

struct Address :Codable {
    var street : String?
    var city : String?
    var geo : Geo
    
    enum CodingKeys : String, CodingKey {
        case street
        case city
        case geo
    }
    
    
    
}

struct Geo :Codable {
    
    var latitude : String
    var longitude : String
    
    enum CodingKeys : String,CodingKey{
        case latitude = "lat"
        case longitude =  "lng"
    }
    
    
    
}
