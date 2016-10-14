//
//  TimeViewController.swift
//  happee
//
//  Created by Chau Pham on 2/21/16.
//  All rights reserved.
//

import UIKit

class TimeViewController : UIViewController {
    
    
    @IBOutlet weak var TimePrint: UILabel!
    
    var labelString: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TimePrint.text = labelString
    }
    
}
    

