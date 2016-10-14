//
//  PageViewController.swift
//  happee
//
//  Created by Chau Pham on 2/20/16.
//  All rights reserved.
//

import UIKit

class PageViewController : UIViewController {
    
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var volTextField: UITextField!
    
    @IBAction func flushAction(sender: AnyObject) {
        let age:Int? = Int(ageTextField.text!)
        let vol:Int? = Int(volTextField.text!)
        
        
        if let text1 = ageTextField.text where !text1.isEmpty {
            caltime(age!,vol:vol!)
            text1.characters.count
        }
        
        if let text2 = volTextField.text where !text2.isEmpty {
            caltime(age!,vol:vol!)
            text2.characters.count
        }
        
    }

    
    func caltime(age:Int,vol:Int) -> String {
        var Volume = Double(vol)
        let time = Int(0.25*Volume)
        
        var bladcap = 500.0
        
        if age <= 14 {
            bladcap = Double((age+2)*30)
        }
        else {
            bladcap = 500.0
        }
        
        var Time = 0
        for x in 1...time {
            Time = x
            Volume = Volume - 0.056*Volume
            
            if (50.0 + Double(vol) - Volume) >= Double(bladcap) {
                return (String(Time))
                //break
                
            }
        }
    if (50.0 + Double(vol) - Volume) < bladcap {
        let vol2 = 100
        return(caltime(age,vol: (vol + vol2 + 50)) )
        }
    return(String(Time))
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "timedisplay"{
            if let destination = segue.destinationViewController as? TimeViewController {
                let age:Int? = Int(ageTextField.text!)
                let vol:Int? = Int(volTextField.text!)
                destination.labelString = caltime(age!,vol:vol!)
            }
        }
    }
}