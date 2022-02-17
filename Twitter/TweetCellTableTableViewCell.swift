//
//  TweetCellTableTableViewCell.swift
//  Twitter
//
//  Created by Vi Nguyen on 2/17/22.
//  Copyright © 2022 Dan. All rights reserved.
//

import UIKit

class TweetCellTableTableViewCell: UITableViewCell {

    
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var tweetContent: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
