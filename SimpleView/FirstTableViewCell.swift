//
//  FirstTableViewCell.swift
//  SimpleView
//
//  Created by Michael Vilabrera on 5/14/15.
//  Copyright (c) 2015 Giving Tree. All rights reserved.
//

import UIKit

class FirstTableViewCell: UITableViewCell {
    
    var label :UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        label.text = "Big size"
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
