//
//  DetailsViewController.swift
//  GitHubReader
//
//  Created by Enrique Dutra on 10/09/21.
//

import UIKit

class DetailsViewController: UIViewController {

    
    var nameLabel = UILabel()
    var descriptionLabel = UILabel()
    var savedButton = UIButton()
    var repo: Repo? {
        didSet{
            self.nameLabel.text = repo?.name
            self.descriptionLabel.text = repo?.description
            
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
