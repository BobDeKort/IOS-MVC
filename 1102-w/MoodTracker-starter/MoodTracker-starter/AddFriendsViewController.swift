//
//  AddFriendsViewController.swift
//  MoodTracker-starter
//
//  Created by Bob De Kort on 11/7/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

protocol AddFriendProtocol: class {
    func addFriend(friend: Friend)
}

class AddFriendsViewController: UIViewController {

    // MARK: Variables
    
    var newFriend: Friend? = nil{
        didSet{
            //friendsTableViewController.addFriend(friend: newFriend!)
            delegate?.addFriend(friend: newFriend!)
        }
    }
    
    weak var delegate: AddFriendProtocol?
    
    var friendsTableViewController : FriendsTableViewController! = nil
    
    
    // MARK: IBOutlets
    @IBOutlet weak var moodSelector: UISegmentedControl!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var saveButton: UIButton!
    
    
    // MARK: Actions
    @IBAction func saveButtonTapped(_ sender: Any) {
        if let name = nameTextField.text {
            newFriend = Friend(name: name, mood: Mood.getMoodFromSegmentedButton(index: moodSelector.selectedSegmentIndex))
        }
        
    }
    
    
    // MARK: View Controller lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
