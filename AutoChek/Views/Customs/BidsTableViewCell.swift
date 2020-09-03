//
//  BidsTableViewCell.swift
//  AutoChek
//
//  Created by OLAJUWON BALOGUN on 01/09/2020.
//  Copyright © 2020 OLAJUWON BALOGUN. All rights reserved.
//

import UIKit

class BidsTableViewCell: UITableViewCell {

    @IBOutlet weak private var bidNumberLabel: UILabel!
    @IBOutlet weak private var amountLabel: UILabel!
    @IBOutlet weak private var dateAndTimelabel: UILabel!
    
    static var reuseIdentifier: String{
           return String(describing: self)
       }
    
    func configure(with bid: BidsModel) {
        bidNumberLabel.text = "Bid No: \(bid.bidNumber)"
        amountLabel.text = "N\(bid.amount)"
        dateAndTimelabel.text = bid.bidDateAndTime
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    
}
