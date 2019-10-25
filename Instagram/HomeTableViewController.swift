//
//  HomeTableViewController.swift
//  Instagram
//
//  Created by Henry on 2019/7/30.
//  Copyright © 2019 Henry. All rights reserved.
//

import UIKit

class HomeTableViewController: UITableViewController, ChooseButtonDelegate {
    
    @IBOutlet var tableview: UITableView!
    
    
    var cellType = Cellselect.square
    
    enum Cellselect {
        case square 
        case detail
    }
    
    
    
    enum ViewSection: Int, CaseIterable{
        case homeInfo = 0
        case homeStory
        case icon
        case square
    }
    
    let sections = ViewSection.allCases
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerCell()
        
    }
    
    func squareButton() {
        cellType = Cellselect.square
        self.tableView.reloadData()
    }
    
    func detailButton() {
        cellType = Cellselect.detail
        self.tableView.reloadData()
    }
    
    func registerCell() {
        let nib = UINib(nibName: "PostTableViewCell", bundle: nil)
        self.tableview.register(nib, forCellReuseIdentifier: "postCell")
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 4
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 3 {
            switch cellType {
            case .detail:
                return postImage.count
            default:
                return 1
            }
        } else {
            return 1
        }
        
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let section = sections[indexPath.section]
        switch section {
        case .homeInfo:
            let cell = tableView.dequeueReusableCell(withIdentifier: "homeInfoCell") as! HomeInfoTableViewCell
            return cell
        case .homeStory:
            let cell = tableView.dequeueReusableCell(withIdentifier: "homeStoryCell", for: indexPath) as! HomeStoryTableViewCell
            return cell
        case .icon:
            let cell = tableView.dequeueReusableCell(withIdentifier: "iconCell") as! IconTableViewCell
            cell.delegate = self
            return cell
            
        default:
            
            switch cellType {
            case .detail:
                let cell = tableView.dequeueReusableCell(withIdentifier: "postCell", for: indexPath) as! PostTableViewCell
                cell.authorLabel.text = "batman"
                cell.nameLabel.text = "batman"
                cell.authorImage.image = UIImage(named: "batman")
                cell.postImage.image = UIImage(named: postImage[indexPath.row])
                cell.likeLabel.text = likes[indexPath.row]
                cell.contentLabel.text = content[indexPath.row]
                return cell
            default:
                let cell = tableView.dequeueReusableCell(withIdentifier: "squareCell") as! SquareTableViewCell
                
                return cell
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let section = sections[indexPath.section]
        switch section {
        case .homeInfo:
            return 200
        case .homeStory:
            return 80
        case .icon:
            return 45
        default:
            switch cellType {
            case .detail:
                return self.tableView.bounds.height / 2 - 80
            default:
                return self.tableView.bounds.height
            }
        }
    }
    
    
    
    
    
}
