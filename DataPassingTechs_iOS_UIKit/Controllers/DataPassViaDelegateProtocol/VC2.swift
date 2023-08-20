//
//  VC2.swift
//  DataPassingTechs_iOS_UIKit
//
//  Created by Jogender Singh on 21/07/23.
//

import UIKit

// Adopt the protocol with proper naming convention
protocol TextFieldDelegate {
    func nameUpdate(name: String)
}

class VC2: UIViewController {
    @IBOutlet weak var txtFieldVC2: UITextField!

    // Declare an instance property for the delegate
    var delegate: TextFieldDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnBackAction(_ sender: Any) {
        // Call the delegate method to pass data back to VC1
        delegate?.nameUpdate(name: txtFieldVC2.text ?? "")
        // Pop the current view controller to go back to VC1
        self.navigationController?.popViewController(animated: true)
    }
}
