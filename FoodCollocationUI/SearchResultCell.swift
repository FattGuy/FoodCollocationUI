//
//  SearchResultCell.swift
//  FoodCollocationUI
//
//  Created by Feng Chang on 6/20/16.
//  Copyright © 2016 Feng Chang. All rights reserved.
//

import UIKit
import FoldingCell

class SearchResultCell: FoldingCell {

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    override func animationDuration(itemIndex:NSInteger, type:AnimationType)-> NSTimeInterval {
        
        // durations count equal it itemCount
        let durations = [0.4, 0.4, 0.4] // timing animation for each view
        return durations[itemIndex]
    }
}
