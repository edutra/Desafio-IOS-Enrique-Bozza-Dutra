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
        return sc
    }()
    
    let tableView = UITableView(frame: .zero, style: .plain)
    
    override func loadView() {
        let view = UIView(frame: UIScreen.main.bounds)
        view.backgroundColor = .white
        self.view = view
        navigationItem.title = "Github Repos "
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }


}

