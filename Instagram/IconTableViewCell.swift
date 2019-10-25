//
//  IconTableViewCell.swift
//  Instagram
//
//  Created by Henry on 2019/8/2.
//  Copyright © 2019 Henry. All rights reserved.
//

import UIKit

protocol ChooseButtonDelegate {
    func squareButton()
    func detailButton()
}

class IconTableViewCell: UITableViewCell {

    var delegate :ChooseButtonDelegate?
    
    @IBAction func squareButton(_ sender: Any) {
        delegate?.squareButton()
    }
    @IBAction func detailButton(_ sender: Any) {
        delegate?.detailButton()
    }
    @IBAction func lastButton(_ sender: Any) {
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
