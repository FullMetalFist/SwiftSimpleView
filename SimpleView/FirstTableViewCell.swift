//
//  FirstTableViewCell.swift
//  SimpleView
//
//  Created by Michael Vilabrera on 5/14/15.
//  Copyright (c) 2015 Giving Tree. All rights reserved.
//

import UIKit

class FirstTableViewCell: UITableViewCell {
    
    // visual format constants
    let FirstCellLabelTitle_V: String = "V:[firstCellLabelTitle]"
    let FirstCellLabelTitle_H: String = "H:[firstCellLabelTitle]"
    let FirstCellTextField_V: String = "V:[firstCellTextField]"
    let FirstCellTextField_H: String = "H:[firstCellTextField]"
    
    // first cell contents
    var firstCellLabelTitle: UILabel = UILabel()
    var firstCellTextField: UITextField = UITextField()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        firstCellLabelTitle.setTranslatesAutoresizingMaskIntoConstraints(false)
        firstCellTextField.setTranslatesAutoresizingMaskIntoConstraints(false)
        self.contentView.addSubview(firstCellLabelTitle)
        self.contentView.addSubview(firstCellTextField)
        
        let viewsDict = ["firstCellLabelTitle":firstCellLabelTitle, "firstCellTextField":firstCellTextField]
        self.contentView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat(FirstCellLabelTitle_H, options: NSLayoutFormatOptions(0), metrics: nil, views: viewsDict))
        self.contentView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat(FirstCellLabelTitle_V, options: NSLayoutFormatOptions(0), metrics: nil, views: viewsDict))
        self.contentView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat(FirstCellTextField_H, options: NSLayoutFormatOptions(0), metrics: nil, views: viewsDict))
        self.contentView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat(FirstCellTextField_V, options: NSLayoutFormatOptions(0), metrics: nil, views: viewsDict))
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        firstCellLabelTitle.text = "Bill"
        firstCellTextField.placeholder = "Amount"
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
