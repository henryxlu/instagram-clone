//
//  PostTableViewCell.swift
//  Instagram
//
//  Created by Henry on 2019/7/29.
//  Copyright © 2019 Henry. All rights reserved.
//

import UIKit

protocol PassViewDelegate {
    func passView()
//    func passView(indexPath: IndexPath)
}

class PostTableViewCell: UITableViewCell {
    
    //optional property type is PassViewDelegate
    //will initialized by viewcontroller
    var delegate: PassViewDelegate?
    var indexPath: IndexPath?
    
    @IBOutlet weak var authorImage: UIImageView!{
        didSet {
            self.authorImage.contentMode = .scaleAspectFill
            self.authorImage.layer.cornerRadius = self.authorImage.frame.height / 2
        }
    }
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var postImage: UIImageView!{
        didSet{
            self.authorImage.contentMode = .scaleToFill
        }
    }
    @IBOutlet weak var likeLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        nameLabel.isUserInteractionEnabled = true
        authorLabel.isUserInteractionEnabled = true
        addLabelTapGesture(nameLabel)
        addLabelTapGesture(authorLabel)
        self.selectionStyle = .none
    }
    
    //label增加手勢行為
    func addLabelTapGesture(_ label: UILabel) {
        let tap = UITapGestureRecognizer(target: self, action: #selector(tapLabel))
        label.addGestureRecognizer(tap)
    }
    
    //當按下手是要做的事情
    @objc func tapLabel() {
        delegate?.passView()

    }
    
  
    
}

