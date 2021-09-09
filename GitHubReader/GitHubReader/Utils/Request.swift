//
//  Request.swift
//  GitHubReader
//
//  Created by Enrique Dutra on 06/09/21.
//

import Foundation


class Request{
    
    func repoRequest(completion: @escaping ([Repo]) -> ()){

        var repos: [Repo] = []
        guard let url = URL(string: "http://api.github.com/search/repositories?q=language:Swift&sort=stars") else { return }
        let task = URLSession.shared.dataTask(with: url) {data, response, error in
            
            if error == nil{
                do {
                    guard let data = data else {return}
                    let json = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [String:Any]
                    let result = json?["items"] as? [[String:Any]]
                    guard let reposJson = result else {return}
                    
                    for repoJson in reposJson{
                        let repo = Repo(json: repoJson)
                        guard let repo = repo else {return}
                        repos.append(repo)
                        completion(repos)
                    }
                    
                }
            }
            
            
            
        }
        task.resume()
    }
    
    func pullRequest(){
        
    }
    
}
