//
//  CategoryDetailCell.swift
//  FoodCollocationUI
//
//  Created by Feng Chang on 6/17/16.
//  Copyright © 2016 Feng Chang. All rights reserved.
//

import UIKit

class CategoryDetailCell: UITableViewCell {
    // category image view
    @IBOutlet weak var meaImage: UIImageView!
    @IBOutlet weak var vegeImage: UIImageView!
    @IBOutlet weak var carbImage: UIImageView!
    @IBOutlet weak var suppImage: UIImageView!
    @IBOutlet weak var snackImage: UIImageView!
    
    // calorie labels
    @IBOutlet weak var meatCalLabel: UILabel!
    @IBOutlet weak var vegeCalLabel: UILabel!
    @IBOutlet weak var carbCalLabel: UILabel!
    @IBOutlet weak var suppCalLabel: UILabel!
    @IBOutlet weak var snackCalLabel: UILabel!
    
    // a brace for tolal sign
    @IBOutlet weak var totalBraceImage: UIImageView!
    
    // sum calorie label
    @IBOutlet weak var totalCalLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
