//
//  BidsViewController.swift
//  AutoChek
//
//  Created by OLAJUWON BALOGUN on 02/09/2020.
//  Copyright © 2020 OLAJUWON BALOGUN. All rights reserved.
//

import UIKit

class BidsViewController: UIViewController {

    
    var bids: [BidsModel] = BidsModel.loadBids
    
    @IBOutlet weak var bidsTableView: UITableView!{
        didSet{
            bidsTableView.delegate = self
            bidsTableView.dataSource = self
            bidsTableView.estimatedRowHeight = 44.0
            bidsTableView.rowHeight = UITableView.automaticDimension
            bidsTableView.register(UINib(nibName: BidsTableViewCell.reuseIdentifier, bundle: nil), forCellReuseIdentifier: BidsTableViewCell.reuseIdentifier)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Bids on cars"
    }
    
}


extension BidsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bids.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       guard let cell = bidsTableView.dequeueReusableCell(withIdentifier: BidsTableViewCell.reuseIdentifier, for: indexPath) as? BidsTableViewCell else {fatalError("unable to deque Bids table view cell")}
        cell.configure(with: bids[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        let storyBoard = UIStoryboard(name: StoryBoard.Main.rawValue, bundle: nil)
        guard let destinationVC = storyBoard.instantiateViewController(identifier: StoryboardID.AuctionViewController.rawValue) as? AuctionViewController else {
            fatalError("Couldn't instantiate view controller")
        }
        destinationVC.bid = bids[indexPath.row]
        navigationController?.pushViewController(destinationVC, animated: true)
        bidsTableView.deselectRow(at: indexPath, animated: true)
    }
    
        
}
