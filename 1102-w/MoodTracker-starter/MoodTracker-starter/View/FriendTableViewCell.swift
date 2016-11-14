//
//  FriendTableViewCell.swift
//  MoodTracker-starter
//
//  Created by Nikolas Burk on 02/11/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

protocol ChangeMoodProtocol: class {
    func updateFriend(friend: Friend)
}

class FriendTableViewCell: UITableViewCell {
    
    // MARK: Variables
    
    var friend: Friend!{
        didSet{
            nameLabel.text = friend.name
            descriptionLabel.text = Friend.getDescription(mood: friend.mood)
            moodButton.setTitle(friend.mood.rawValue, for: .normal)
        }
    }
    
    var friendsTableViewController: FriendsTableViewController? = nil

    weak var delegate: ChangeMoodProtocol?
    // MARK: IBOutlets
    
    @IBOutlet weak var nameLabel: UILabel!

    @IBOutlet weak var descriptionLabel: UILabel!

    @IBOutlet weak var moodButton: UIButton!
    
    
    // MARK: Actions
    
    @IBAction func moodButtonPressed(_ sender: Any) {
        delegate?.updateFriend(friend: friend)
    }
}
