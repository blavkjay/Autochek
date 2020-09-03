//
//  BidDetailsView.swift
//  AutoChek
//
//  Created by OLAJUWON BALOGUN on 02/09/2020.
//  Copyright © 2020 OLAJUWON BALOGUN. All rights reserved.
//

import UIKit

class BidDetailsView: UIView {

    @IBOutlet var bidContentView: UIView!
    
    @IBOutlet weak var buttonStackView: UIStackView!
    static let NIB_NAME = String(describing: BidDetailsView.self)
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
    
    private func initSubViews(){
        loadFromNib()
    }
    
    private func loadFromNib(){
        Bundle.main.loadNibNamed(BidDetailsView.NIB_NAME, owner: self, options: nil)
        self.addSubview(self.bidContentView)
    }
    
    
    @IBAction func acceptBidButtonTapped(_ sender: UIButton) {
       delegate?.acceptButtonPressed()
    }
    
    @IBAction func rejectBidButtonTapped(_ sender: UIButton) {
        delegate?.rejectButtonPressed()
    }
    
}
