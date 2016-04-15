//
//  ButtonTableViewCell.swift
//  ios-challenge-task1
//
//  Created by Aaron Eliason on 4/15/16.
//  Copyright © 2016 IlasonApps. All rights reserved.
//

import UIKit
import CoreData

class ButtonTableViewCell: UITableViewCell {
    @IBOutlet weak var primaryLabel: UILabel!
    @IBOutlet weak var buttonImage: UIButton!
    
    var delegate = ButtonTableViewCellDelegate?()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBAction func buttonTapped(sender: AnyObject) {
        if let delegate = delegate {
            delegate.buttonCellButtonTapped(self)
        }
    }
    
    func updateButton(isComplete: Bool) {
        if isComplete{
            buttonImage.setImage(UIImage(named: "complete"), forState: .Normal)
        } else {
            buttonImage.setImage(UIImage(named: "incomplete"), forState: .Normal)
        }
        
    }
    
}
protocol ButtonTableViewCellDelegate {
    
    func buttonCellButtonTapped(sender: ButtonTableViewCell)
}

extension ButtonTableViewCell {
    
    func updateWithTask(task: Task) {
        
        primaryLabel.text = task.name
        updateButton(task.isComplete.boolValue)
    }
}

