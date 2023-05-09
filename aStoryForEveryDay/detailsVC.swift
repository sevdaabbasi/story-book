//
//  detailsVC.swift
//  aStoryForEveryDay
//
//  Created by Sevda Abbasi on 5.05.2023.
//

import UIKit

class detailsVC: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    
    var selectedStory : Story?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = selectedStory?.storyName
        imageView.image = selectedStory?.image
        
        
        
    }
   
    }

    
