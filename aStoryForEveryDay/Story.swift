//
//  Story.swift
//  aStoryForEveryDay
//
//  Created by Sevda Abbasi on 10.05.2023.
//

import Foundation
import UIKit

class Story {
    
    var storyName : String
    var image : UIImage
    var storyAdd : String
    
    init(storyName: String, storyAdd: String, image: UIImage) {
        self.storyName = storyName
        self.image = image
        self.storyAdd = storyAdd
    }
}
