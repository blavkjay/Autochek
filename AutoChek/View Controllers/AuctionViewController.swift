//
//  AuctionViewController.swift
//  AutoChek
//
//  Created by OLAJUWON BALOGUN on 02/09/2020.
//  Copyright © 2020 OLAJUWON BALOGUN. All rights reserved.
//

import UIKit


protocol AuctionDelegate: class {
    func acceptButtonPressed()
    func rejectButtonPressed()
    func showCreateNewOffer()
    func pushToNewOfferVC()
}

class AuctionViewController: UIViewController {

    var bid : BidsModel?

    @IBOutlet weak private var containerView: UIView!
    @IBOutlet weak var starImageView: UIImageView!
    @IBOutlet weak var bidLabel: UILabel!
    
    lazy var bidDetailsView: BidDetailsView = {
        let view = BidDetailsView()
        return view
    }()
    
    lazy var bidAcceptView: BidAcceptView = {
         let view = BidAcceptView()
         return view
     }()
    
    lazy var newOfferForBid: NewOfferForBid = {
        let view = NewOfferForBid()
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpOnLoad()
    }
    
    private func setUpOnLoad(){
        starImageView.image = UIImage(named: "star")
        bidLabel.text = "This bid won the auction"
        bidLabel.textColor = .orange
        bidDetailsView.delegate = self
        containerView.addSubview(bidDetailsView.bidContentView)
    }
   
    
}

extension AuctionViewController: AuctionDelegate {
    
    func acceptButtonPressed() {
        starImageView.image = UIImage(named: "green star")
        bidLabel.text = "Bid Accepted"
        bidLabel.textColor = .green
        bidDetailsView.bidContentView.removeFromSuperview()
        containerView.addSubview(bidAcceptView.contentView)
    }
    
    func rejectButtonPressed() {
        let storyBoard = UIStoryboard(name: StoryBoard.Main.rawValue, bundle: nil)
        guard let destinationVC = storyBoard.instantiateViewController(identifier: StoryboardID.BidRejectionPopUpViewController.rawValue) as? BidRejectionPopUpViewController else {
            fatalError("Couldn't instantiate view controller")
        }
        destinationVC.delegate = self
        navigationController?.present(destinationVC, animated: true)
    }
    
    func showCreateNewOffer() {
        starImageView.image = UIImage(named: "red star")
        bidLabel.text = "Winning Bid Rejected"
        bidLabel.textColor = .red
        bidDetailsView.bidContentView.removeFromSuperview()
        newOfferForBid.delegate = self
        containerView.addSubview(newOfferForBid.contentView)
    }
    
    func pushToNewOfferVC() {
        let storyBoard = UIStoryboard(name: StoryBoard.Main.rawValue, bundle: nil)
               guard let destinationVC = storyBoard.instantiateViewController(identifier: StoryboardID.BidOfferSentViewController.rawValue) as? BidOfferSentViewController else {
                   fatalError("Couldn't instantiate view controller")
               }
        navigationController?.pushViewController(destinationVC, animated: true)
    }
}
