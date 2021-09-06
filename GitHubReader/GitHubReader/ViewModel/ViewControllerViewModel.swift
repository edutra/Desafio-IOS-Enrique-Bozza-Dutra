//
//  ViewControllerViewModel.swift
//  GitHubReader
//
//  Created by Enrique Dutra on 06/09/21.
//

import Foundation

protocol ViewControllerViewModelDelegate: AnyObject{
    func stopLoading()
    func startLoading()
}

class ViewControllerViewModel{
    
    
    var repos: [Repo]?
    weak var delegate: ViewControllerViewModelDelegate?
    let service = Request()
    
    func repoRequest(){
        service.repoRequest { repos in
            self.repos = repos
            print(self.repos)
        }
    }
    
    
}
