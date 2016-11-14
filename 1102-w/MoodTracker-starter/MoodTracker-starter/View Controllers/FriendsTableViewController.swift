//
//  FriendsTableViewController.swift
//  MoodTracker-starter
//
//  Created by Nikolas Burk on 02/11/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

class FriendsTableViewController: UITableViewController, AddFriendProtocol, ChangeMoodProtocol {
    
    
    // MARK: Variables
    
    var friendsArray : [Friend] = [
        Friend(name: "Enzo", mood: .angry),
        Friend(name: "David", mood: .happy),
        Friend(name: "Vincent", mood: .medium)
    ]
    
    
    // MARK: View Controller lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    // MARK: TableView set up
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendsArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Friend") as! FriendTableViewCell
        
        let friend = friendsArray[indexPath.row]
        cell.friend = friend
        cell.delegate = self
        
        return cell
    }
    
    
    // MARK: Segues
    @IBAction func unwindToFriendsTableView(segue: UIStoryboardSegue) {}
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! AddFriendsViewController
        destinationVC.delegate = self
    }
    
    // Model updating functions
    
    func updateFriend(friend: Friend){
        friend.changeMood()
        tableView.reloadData()
    }
    
    func addFriend(friend: Friend){
        friendsArray.append(friend)
        tableView.reloadData()
    }
    
}
