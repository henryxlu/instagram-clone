//
//  StoryCollectionViewCell.swift
//  Instagram
//
//  Created by Henry on 2019/7/26.
//  Copyright © 2019 Henry. All rights reserved.
//

import UIKit

class StoryCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var storyImage: UIImageView!{
        didSet {
            self.storyImage.contentMode = .scaleAspectFill
            self.storyImage.layer.cornerRadius = self.storyImage.frame.height / 2
        }
    }
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
}
