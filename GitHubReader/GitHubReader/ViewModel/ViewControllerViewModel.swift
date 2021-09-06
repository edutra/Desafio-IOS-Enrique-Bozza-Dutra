//
//  ViewControllerViewModel.swift
//  GitHubReader
//
//  Created by Enrique Dutra on 06/09/21.
//

import Foundation

protocol ViewControllerViewModelDelegate: class{
    func stopLoading()
    func startLoading()
}

class ViewControllerViewModel{
    
    
    var repos: [Repo]?
    weak var delegate: ViewControllerViewModelDelegate?
    
    
    
}
