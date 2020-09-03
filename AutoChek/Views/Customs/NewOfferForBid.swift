//
//  NewOfferForBid.swift
//  AutoChek
//
//  Created by OLAJUWON BALOGUN on 02/09/2020.
//  Copyright © 2020 OLAJUWON BALOGUN. All rights reserved.
//

import UIKit

class NewOfferForBid: UIView {

     
    @IBOutlet var contentView: UIView!
    static let NIB_NAME = String(describing: NewOfferForBid.self)
    weak var delegate: AuctionDelegate?
    
    override init(frame: CGRect) {
           super.init(frame: frame)
           initSubViews()
       }
    
        required init?(coder aDecoder: NSCoder) {
              super.init(coder: aDecoder)
              initSubViews()
          }
       
       override func prepareForInterfaceBuilder() {
           super.prepareForInterfaceBuilder()
           initSubViews()
       }
       
       private func initSubViews() {
           loadFromNib()
       }
       
    private func loadFromNib() {
        Bundle.main.loadNibNamed(NewOfferForBid.NIB_NAME, owner: self, options: nil)
        self.addSubview(self.contentView)
    }
       
    @IBAction func requestButtonPressed(_ sender: Any) {
        delegate?.pushToNewOfferVC()
    }
    
}
