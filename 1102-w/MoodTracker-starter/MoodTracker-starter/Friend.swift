//
//  Friend.swift
//  MoodTracker-starter
//
//  Created by Bob De Kort on 11/4/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import Foundation

// MARK: Mood enumeration

enum Mood: String{
    case happy = "😀"
    case medium = "😑"
    case angry = "😡"
    
    static func getMoodFromSegmentedButton(index: Int) -> Mood{
        switch index {
        case 0:
            return .happy
        case 1:
            return .medium
        case 2:
            return .angry
        default:
            print("error")
            return .happy
        }
    }
}


// MARK: Friend class
class Friend {
    
    let name: String
    var mood: Mood
    
    init(name: String, mood: Mood){
        self.name = name
        self.mood = mood
    }
    
    // returns description of a mood
    static func getDescription(mood: Mood) -> String {
        switch mood {
        case .happy:
            return "Happy Day!!!"
        case .medium:
            return "I really don't care about your shit"
        case .angry:
            return "Get off my lawn!!!"
        }
    }
    
    // cycles moods
    func changeMood(){
        switch self.mood {
        case .happy:
            self.mood = .medium
        case .medium:
            self.mood = .angry
        case .angry:
            self.mood = .happy
        }
    }
}
