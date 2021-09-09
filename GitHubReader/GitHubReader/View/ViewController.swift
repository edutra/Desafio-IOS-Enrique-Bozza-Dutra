//
//  ViewController.swift
//  GitHubReader
//
//  Created by Kaique Monteiro on 30/08/21.
//

import UIKit

class ViewController: UIViewController {

    
    let viewModel = ViewControllerViewModel()
    
    let segmentedControl: UISegmentedControl = {
        let sc = UISegmentedControl(items: ["Item 1", "item 2"])
        sc.selectedSegmentIndex = 0
        return sc
    }()
    
    let tableView = UITableView(frame: .zero, style: .plain)
    
    let savedRepos = ["Temporario", "Temporario 2"]
    let unsavedRepos = ["Temporario 1", "temporario 2"]
    
    override func loadView() {
        super.loadView()
        let view = UIView(frame: UIScreen.main.bounds)
        view.backgroundColor = .white
        self.view = view
        navigationItem.title = "Github Repos"
        
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        viewModel.delegate = self
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(RepoTableViewCell.self, forCellReuseIdentifier: "cellId")
        
        let stackView = UIStackView(arrangedSubviews: [
            segmentedControl, tableView
            ])
        
        stackView.axis = .vertical
        view.addSubview(stackView)

        stackView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor, padding: .zero)
        startLoading()
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(false)
        self.tableView.reloadData()
    }

}


extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! RepoTableViewCell
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            cell.repo = viewModel.repos?[indexPath.row]
            cell.awakeFromNib()
            cell.repoNameLabel.text = cell.repo?.name
        default:
            return UITableViewCell()
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            return viewModel.repos?.count ?? 0
        default:
            return viewModel.repos?.count ?? 0
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 100
    }
    

}

extension ViewController: ViewControllerViewModelDelegate{
    func endLoading() {
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
        
    }
    
    func stopLoading() {
        return
    }
    
    func startLoading() {
        viewModel.repoRequest()
        
    }
    
    
    
}

