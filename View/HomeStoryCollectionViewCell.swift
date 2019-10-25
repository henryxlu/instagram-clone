//
//  HomeStoryCollectionViewCell.swift
//  Instagram
//
//  Created by Henry on 2019/10/22.
//  Copyright © 2019 Henry. All rights reserved.
//

import UIKit

class HomeStoryCollectionViewCell: UICollectionViewCell {
 
    
    @IBOutlet weak var homeStoryImage: UIImageView!{
        didSet{
            self.homeStoryImage.contentMode = .scaleAspectFill
            self.homeStoryImage.layer.cornerRadius = self.homeStoryImage.frame.height / 2
        }
    
    }
    
    
}
