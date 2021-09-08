//
//  RepoTableViewCell.swift
//  GitHubReader
//
//  Created by Enrique Dutra on 06/09/21.
//

import UIKit

class RepoTableViewCell: UITableViewCell {
        
    let repoNameLabel = UILabel()
    var repo: Repo? {
        didSet{
            repoNameLabel.text = repo?.name
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()


        repoNameLabel.translatesAutoresizingMaskIntoConstraints = false


        contentView.addSubview(repoNameLabel)




    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(repoNameLabel)
        
        repoNameLabel.anchor(top: topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
     }

}
