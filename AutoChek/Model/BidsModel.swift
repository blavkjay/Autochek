//
//  BidsModel.swift
//  AutoChek
//
//  Created by OLAJUWON BALOGUN on 02/09/2020.
//  Copyright © 2020 OLAJUWON BALOGUN. All rights reserved.
//

import Foundation


struct BidsModel {
    var bidNumber: Int
    var bidDateAndTime: String
    var amount: Double
    
    
    static var loadBids: [BidsModel] {
        return [BidsModel(bidNumber: 01, bidDateAndTime: "07/25/2020 04:31", amount: 50000000),
                BidsModel(bidNumber: 02, bidDateAndTime: "07/25/2020 04:31", amount: 50000000),
                BidsModel(bidNumber: 03, bidDateAndTime: "07/25/2020 04:31", amount: 50000000),
                BidsModel(bidNumber: 04, bidDateAndTime: "07/25/2020 04:31", amount: 50000000),
                BidsModel(bidNumber: 05, bidDateAndTime: "07/25/2020 04:31", amount: 50000000),
                BidsModel(bidNumber: 06, bidDateAndTime: "07/25/2020 04:31", amount: 50000000),
                BidsModel(bidNumber: 07, bidDateAndTime: "07/25/2020 04:31", amount: 50000000),
                BidsModel(bidNumber: 08, bidDateAndTime: "07/25/2020 04:31", amount: 50000000),
                BidsModel(bidNumber: 09, bidDateAndTime: "07/25/2020 04:31", amount: 50000000),
                BidsModel(bidNumber: 10, bidDateAndTime: "07/25/2020 04:31", amount: 50000000),
        ]
    }
}
