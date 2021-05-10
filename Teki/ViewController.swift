//
//  ViewController.swift
//  Teki
//
//  Created by Melissa Briere on 08/05/2021.
//

import UIKit

class ViewController: UIViewController {
    var characters = ["Un alien","Une lady","Un miaous","Une patate","Un tardigrade","Un pirate","Un voleur","Un roi","Un loup-garou","Une méduse","Un philathéliste","Un burger"]
    var activities = ["adepte de métal", "diplomate","susceptible","culturiste", "ténor", "fashion","qui arrête de fumer","qui fait un stream","se bavant dessus","machiavélique","misanthrope","qui fait des squats"]
    @IBOutlet weak var quoteLabel: UILabel!
    
    @IBAction func changeQuote() {
        let randomIndex1 = Int(arc4random_uniform(UInt32(characters.count)))
        let character = characters[randomIndex1]
        
        
        let randomIndex2 = Int(arc4random_uniform(UInt32(activities.count)))
        let activity = activities[randomIndex2]
        
        
        let quote = character + " " + activity + "."
        
        quoteLabel.text = quote
    }
    

}

