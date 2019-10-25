//
//  HomeInfoTableViewCell.swift
//  Instagram
//
//  Created by Henry on 2019/10/22.
//  Copyright © 2019 Henry. All rights reserved.
//

import UIKit

class HomeInfoTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var autherImage: UIImageView!{
        didSet{
            self.autherImage.image = UIImage(named: "batman")
            self.autherImage.contentMode = .scaleAspectFill
            self.autherImage.layer.cornerRadius = self.autherImage.frame.height / 2
        }
    }
    
    @IBOutlet weak var messageImage: UIImageView!{
        didSet{
            self.messageImage.image = UIImage(named: "homeMessage")
        }
    }
    @IBOutlet weak var nameLabel: UILabel!
    
    func setUpLabel() {
        let attributedString = NSMutableAttributedString(string: """
Hello! I'm 🦇
Celebrating 80 years as The World’s Greatest Detective, Batman is the ultimate crusader against injustice.
""")
        
        // *** Create instance of `NSMutableParagraphStyle`
        let paragraphStyle = NSMutableParagraphStyle()
        
        // *** set LineSpacing property in points ***
        paragraphStyle.lineSpacing = 2 // Whatever line spacing you want in points
        
        // *** Apply attribute to string ***
        attributedString.addAttribute(NSAttributedString.Key.paragraphStyle, value:paragraphStyle, range:NSMakeRange(0, attributedString.length))
        // *** Set Attributed String to your label ***
        nameLabel.attributedText = attributedString
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setUpLabel()
        //        nameLabel.text = "Hello! I'm 🦇 。Celebrating 80 years as The World’s Greatest Detective, Batman is the ultimate crusader against injustice."
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
