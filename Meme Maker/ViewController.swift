//
//  ViewController.swift
//  Meme Maker
//
//  Created by Kim Lyndon on 3/16/18.
//  Copyright © 2018 Kim Lyndon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var TopCaptionSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var BottomCaptionSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var TopCaptionLabel: UILabel!
    
    @IBOutlet weak var BottomCaptionLabel: UILabel!
    
  
    
    
    var topChoices = [CaptionChoice]()
    var bottomChoices = [CaptionChoice]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let coolChoice = CaptionChoice(emoji: "🕶", caption: "You know what's cool?")
        let madChoice = CaptionChoice(emoji: "💥", caption: "You know what makes me mad?")
        let loveChoice = CaptionChoice(emoji: "💕", caption: "You know what I love?")
        topChoices = [coolChoice, madChoice, loveChoice]
        TopCaptionSegmentedControl.removeAllSegments()
        for choice in topChoices {
        TopCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
        
        TopCaptionSegmentedControl.selectedSegmentIndex = 0
        let catChoice = CaptionChoice(emoji: "🐯", caption: "Cats wearing hats!")
        let dogChoice = CaptionChoice(emoji: "🐶", caption: "Dogs carrying logs!")
        let monkeyChoice = CaptionChoice(emoji: "🐵", caption: "Monkeys being funky!")
         bottomChoices = [catChoice, dogChoice, monkeyChoice]
        BottomCaptionSegmentedControl.removeAllSegments()
        for choice in bottomChoices {
        BottomCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: bottomChoices.count, animated: false)
        }
        BottomCaptionSegmentedControl.selectedSegmentIndex = 0
        updateLabels()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func updateLabels() {
     let topIndex = TopCaptionSegmentedControl.selectedSegmentIndex
     let bottomIndex = BottomCaptionSegmentedControl.selectedSegmentIndex
        
     let topChoice = topChoices [topIndex]
     let bottomChoice = bottomChoices[bottomIndex]
     TopCaptionLabel.text = topChoice.caption
     BottomCaptionLabel.text = bottomChoice.caption
    }
    
    @IBAction func ChoiceSelector(_ sender: Any) {
    
    updateLabels()
    }
    



}
