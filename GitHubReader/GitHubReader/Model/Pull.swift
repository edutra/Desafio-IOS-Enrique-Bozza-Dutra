//
//  Pulls.swift
//  GitHubReader
//
//  Created by Enrique Dutra on 04/09/21.
//

import Foundation

struct Pull: Decodable{
    let pullTitle: String
    let pullURL: String
    let pullNumber: Int
    let issueURL: String
//    let state: State = .open
}
