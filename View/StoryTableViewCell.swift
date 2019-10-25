//
//  StoryTableViewCell.swift
//  Instagram
//
//  Created by Henry on 2019/7/29.
//  Copyright © 2019 Henry. All rights reserved.
//

import UIKit

class StoryTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    

    @IBOutlet weak var storyCollectionView: UICollectionView!
    @IBOutlet weak var stoyrCollectionViewLayout: UICollectionViewFlowLayout!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.storyCollectionView.delegate = self
        self.storyCollectionView.dataSource = self
        
        storyCollectionView.showsHorizontalScrollIndicator = false
        stoyrCollectionViewLayout.scrollDirection = .horizontal
        
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return storyPic.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "storyCell", for: indexPath) as! StoryCollectionViewCell

        cell.nameLabel.text = storyName[indexPath.row]
        cell.storyImage.image = UIImage(named: storyPic[indexPath.row])
        
        return cell
    }
    
    
}
