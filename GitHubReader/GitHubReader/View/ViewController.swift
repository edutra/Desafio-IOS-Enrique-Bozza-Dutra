//
//  ViewController.swift
//  GitHubReader
//
//  Created by Kaique Monteiro on 30/08/21.
//

import UIKit

class ViewController: UIViewController {

    
    let segmentedControl: UISegmentedControl = {
        let sc = UISegmentedControl(items: ["Item 1", "item 2"])
        sc.selectedSegmentIndex = 0
        return sc
    }()
    
    let tableView = UITableView(frame: .zero, style: .plain)
    
    let savedRepos = ["Temporario", "Temporario 2"]
    let unsavedRepos = ["Temporario 1", "temporario 2"]
    
    override func loadView() {
        let view = UIView(frame: UIScreen.main.bounds)
        view.backgroundColor = .white
        self.view = view
        navigationItem.title = "Github Repos"
        
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        let stackView = UIStackView(arrangedSubviews: [
            segmentedControl, tableView
            ])
        
        stackView.axis = .vertical
        view.addSubview(stackView)

        stackView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor, padding: .zero)
        
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            return unsavedRepos.count
        default:
            return savedRepos.count
        }
    }
    
    
}

