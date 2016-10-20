//
//  TaskTableViewCell.swift
//  AlexisTranToDoList
//
//  Created by Alexis Tran on 10/19/16.
//  Copyright © 2016 Alexis Tran. All rights reserved.
//

import UIKit

class TaskTableViewCell: UITableViewCell {
    // MARK: Properties
    @IBOutlet weak var taskLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
