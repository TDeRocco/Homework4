//
//  ViewController.swift
//  Homework4
//
//  Created by Talon DeRocco on 2/26/20.
//  Copyright © 2020 Talon DeRocco. All rights reserved.
//

import UIKit
import AudioToolbox


class ViewController: UIViewController {
    
    @IBOutlet weak var quoteField: UITextField!
    @IBOutlet weak var capitalField: UITextField!
    @IBAction func displayCapital(_ sender: Any)
    {}
    @IBAction func displayAlert(_ sender: Any) {
    
        
        // Setup the alert
        let alert = UIAlertController(title: "Fantastic!", message: "Your quote is fantastic.", preferredStyle: .alert)
        
        // Add the action
        alert.addAction(UIAlertAction(title: NSLocalizedString("Thank you", comment: "Close"), style: .`default`, handler: { _ in}))
        
        // Display the alert
        self.present(alert,animated: true, completion: nil)
    }
    
    @IBAction func quoteAlert(_ sender: Any) {
        
        // Design the input collection
        let ac = UIAlertController(title: "What's your favorite quote?", message: nil, preferredStyle: .alert)
        ac.addTextField()
        let submitAction = UIAlertAction(title: "Submit", style: .default) { [unowned ac] _ in
            let answer = ac.textFields![0]
            self.quoteField.text = answer.text
            
            // Design the second alert
            let capital = UIAlertController(title: "Wrong!", message: answer.text, preferredStyle: .alert)
            capital.addAction(UIAlertAction(title:NSLocalizedString("Try Again", comment: "Default action"), style: .`default`, handler: { _ in}))
            

            
            // Display the alert
                self.present(capital,animated: true, completion: nil)}
        ac.addAction(submitAction)
        present(ac, animated: true)
            
    
    }
    
    @IBAction func playMedia(_ sender: Any) {
        
        // Play wav file
        var soundID: SystemSoundID = 0
        let soundFile:String=Bundle.main.path(forResource:"icky",ofType: "wav")!
        let soundURL: NSURL = NSURL(fileURLWithPath: soundFile)
        AudioServicesCreateSystemSoundID(soundURL, &soundID)
        AudioServicesPlaySystemSound(soundID)
    
    }
    
    @IBAction func playMedia2(_ sender: Any) {
        
        // Play wav file
        var soundID: SystemSoundID = 0
        let soundFile:String=Bundle.main.path(forResource:"hamster",ofType: "wav")!
        let soundURL: NSURL = NSURL(fileURLWithPath: soundFile)
        
        AudioServicesCreateSystemSoundID (soundURL, &soundID)
    AudioServicesPlaySystemSound(soundID)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
       override func viewDidLoad() {
        super.viewDidLoad()
}
}
