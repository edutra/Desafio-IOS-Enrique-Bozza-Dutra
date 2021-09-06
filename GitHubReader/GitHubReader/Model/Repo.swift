//
//  Repo.swift
//  GitHubReader
//
//  Created by Enrique Dutra on 04/09/21.
//

import Foundation

struct Repo: Decodable{
    var repoDetails: String = ""
    var pullList: [Pull] = []
}
