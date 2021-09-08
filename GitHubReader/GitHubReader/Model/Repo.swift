//
//  Repo.swift
//  GitHubReader
//
//  Created by Enrique Dutra on 04/09/21.
//

import Foundation

struct Repo: Decodable{
    var description: String?
    var pullList: [Pull]?
    var name: String?
    var id: Int?
    var fullName: String?
    
    init?(json: [String: Any]) {
        self.name = json["name"] as? String
        self.description = json["description"] as? String
        self.fullName = json["full_name"] as? String
        self.id = json["id"] as? Int
                
    }
}
