//
//  BidRejectionPopUpViewController.swift
//  AutoChek
//
//  Created by OLAJUWON BALOGUN on 03/09/2020.
//  Copyright © 2020 OLAJUWON BALOGUN. All rights reserved.
//

import UIKit

class BidRejectionPopUpViewController: UIViewController {

    
    weak var delegate: AuctionDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    private func dismissModel() {
        dismiss(animated: true) { [weak self] in
            guard let self = self else {return}
            self.delegate?.showCreateNewOffer()
        }
    }
    
    @IBAction func sendNewOfferButtonPressed(_ sender: Any) {
        dismissModel()
    }
    
    @IBAction func listOnMarketButtonPressed(_ sender: Any) {
        dismissModel()
    }
    
    @IBAction func changedMyMindButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
