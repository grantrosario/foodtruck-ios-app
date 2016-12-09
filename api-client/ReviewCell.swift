//
//  ReviewCell.swift
//  api-client
//
//  Created by Grant Rosario on 12/9/16.
//  Copyright © 2016 Grant Rosario. All rights reserved.
//

import UIKit

class ReviewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var reviewTextLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell(review: FoodTruckReview) {
        titleLabel.text = review.title
        reviewTextLabel.text = review.text
    }

}
