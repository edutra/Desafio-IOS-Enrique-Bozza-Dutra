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
    
    weak var delegate: ViewControllerViewModelDelegate?
    
}
