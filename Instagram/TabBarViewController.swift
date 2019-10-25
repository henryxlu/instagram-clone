//
//  TabBarViewController.swift
//  Instagram
//
//  Created by Henry on 2019/7/30.
//  Copyright © 2019 Henry. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController,UITabBarControllerDelegate {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self

        tabBar.items![0].image = UIImage(named: "home")
        tabBar.items![0].selectedImage = UIImage(named: "homeSelect")
        tabBar.items![0].title = ""
        tabBar.items![1].image = UIImage(named: "search")
        tabBar.items![1].title = ""
        tabBar.items![2].image = UIImage(named: "plus")
        tabBar.items![2].title = ""
        tabBar.items![3].image = UIImage(named: "like")
        tabBar.items![3].title = ""
        tabBar.items![4].image = UIImage(named: "user")
        tabBar.items![4].selectedImage = UIImage(named: "userSelect")
        tabBar.items![4].title = ""
        
        
    }
    
    
    
    
}
