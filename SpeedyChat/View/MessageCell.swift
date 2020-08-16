//
//  MessageCell.swift
//  SpeedyChat
//
//  Created by Mirana Abrar Anwar on 8/15/20.
//  Copyright © 2020 Mirana Anwar. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {

    @IBOutlet weak var messageBubble: UIView!
    @IBOutlet weak var LeftImageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var rightImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        messageBubble.layer.cornerRadius = messageBubble.frame.size.height / 5
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
