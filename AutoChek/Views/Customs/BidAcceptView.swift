//
//  BidAcceptView.swift
//  AutoChek
//
//  Created by OLAJUWON BALOGUN on 02/09/2020.
//  Copyright © 2020 OLAJUWON BALOGUN. All rights reserved.
//

import UIKit

class BidAcceptView: UIView {
    
    
    static let NIB_NAME = String(describing: BidAcceptView.self)

    @IBOutlet var contentView: UIView!
    
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
        Bundle.main.loadNibNamed(BidAcceptView.NIB_NAME, owner: self, options: nil)
        self.addSubview(self.contentView)
    }
       
       

}
