//
//  Request.swift
//  GitHubReader
//
//  Created by Enrique Dutra on 06/09/21.
//

import Foundation


class Request{
    
    func repoRequest(){
//        let url = URL(string: "http://api.github.com/search/repositories?q=language:Swift&sort=stars")
        
        guard let url = URL(string: "http://api.github.com/search/repositories?q=language:Swift&sort=stars") else { return }
        let task = URLSession.shared.dataTask(with: url) {data, response, error in
            
        }
    }
    
    func pullRequest(){
        
    }
    
}
