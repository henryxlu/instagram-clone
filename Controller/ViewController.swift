//
//  ViewController.swift
//  Instagram
//
//  Created by Henry on 2019/7/26.
//  Copyright © 2019 Henry. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    
    @IBOutlet weak var tableview: UITableView!
    @IBOutlet weak var cameraButton: UIBarButtonItem!
    @IBOutlet weak var tvButton: UIBarButtonItem!
    @IBOutlet weak var messageButton: UIBarButtonItem!
    
    
    enum ViewSection: Int, CaseIterable {
        case story = 0
        case post
    }
    
    let sections = ViewSection.allCases
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cameraButton.image = UIImage(named: "camera")
        tvButton.image = UIImage(named: "tv")
        messageButton.image = UIImage(named: "message")
        
        self.tableview.delegate = self
        self.tableview.dataSource = self
        
        let nib = UINib(nibName: "PostTableViewCell", bundle: nil)
        self.tableview.register(nib, forCellReuseIdentifier: "postCell")
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case ViewSection.story.rawValue:
            return 1
        default :
            return postImage.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let section = sections[indexPath.section]
        switch section {
        case .story:
            let cell = tableView.dequeueReusableCell(withIdentifier: "storyCell", for: indexPath) as! StoryTableViewCell
            return cell
        case .post: 
            let cell = tableView.dequeueReusableCell(withIdentifier: "postCell", for: indexPath) as! PostTableViewCell
            cell.authorLabel.text = "batman"
            cell.nameLabel.text = "batman"
            cell.authorImage.image = UIImage(named: "batman")
            cell.postImage.image = UIImage(named: postImage[indexPath.row])
            cell.likeLabel.text = likes[indexPath.row]
            cell.contentLabel.text = content[indexPath.row]
            //assign the optional property to view controller
            cell.delegate = self
            cell.indexPath = indexPath
            return cell
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        switch indexPath.section {
        case ViewSection.story.rawValue:
            return 80
        case ViewSection.post.rawValue:
            return 380
        default:
            return 0
        }
    }
    
}

// MARK: PassViewDelegate
extension ViewController: PassViewDelegate {
    
    
    func passView() {
        let homeInfoTVC = storyboard?.instantiateViewController(withIdentifier: "HomeTableViewController") as! HomeTableViewController
        navigationController?.pushViewController(homeInfoTVC, animated: true)
    }
    
}
