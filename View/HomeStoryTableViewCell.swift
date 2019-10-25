//
//  HomeStoryTableViewCell.swift
//  Instagram
//
//  Created by Henry on 2019/10/22.
//  Copyright © 2019 Henry. All rights reserved.
//

import UIKit

class HomeStoryTableViewCell: UITableViewCell {
    
    
    
    @IBOutlet weak var homeStoryCollectionView: UICollectionView!
    @IBOutlet weak var homeStoryCollectionViewFlowLayout: UICollectionViewFlowLayout!
    
    
    func setupCollectionView() {
        homeStoryCollectionView.delegate = self
        homeStoryCollectionView.dataSource = self
        homeStoryCollectionView.showsHorizontalScrollIndicator = false
        
        homeStoryCollectionViewFlowLayout.scrollDirection = .horizontal
        
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupCollectionView()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

extension HomeStoryTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return homeStory.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "homeStoryCell", for: indexPath) as! HomeStoryCollectionViewCell
        cell.homeStoryImage.image = UIImage(named: homeStory[indexPath.row])
        
        return cell
    }
    
    
}


