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
            if let data = data{
                if let repos = try? JSONDecoder().decode([Repo].self, from: data){
                    print(repos)
                } else {
                    print("Invalid")
                }
            } else if let _ = error{
                print("Request error")
            }
        }
        task.resume()
    }
    
    func pullRequest(){
        
    }
    
}
