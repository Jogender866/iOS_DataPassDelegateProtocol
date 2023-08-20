//
//  VC1.swift
//  DataPassingTechs_iOS_UIKit
//
//  Created by Jogender Singh on 21/07/23.
//

import UIKit

// Adopt the protocol with proper naming convention
class VC1: UIViewController, TextFieldDelegate {
    @IBOutlet weak var lblVC1: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnNextAction(_ sender: Any) {
        // Create an instance of VC2 using the storyboard identifier "VC2"
        let vc = storyboard?.instantiateViewController(withIdentifier: "VC2") as! VC2
        
        // Set VC1 as the delegate of VC2 to receive data back
        vc.delegate = self
        
        // Push VC2 onto the navigation stack to navigate to it
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    // Implement the delegate method to receive data from VC2
    func nameUpdate(name: String) {
        // Update your UI or perform any action with the received data
        lblVC1.text = name
    }
}
