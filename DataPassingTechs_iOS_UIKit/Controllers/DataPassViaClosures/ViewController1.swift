//
//  ViewController1.swift
//  DataPassingTechs_iOS_UIKit
//
//  Created by Jogender Singh on 22/07/23.
//

import UIKit

class ViewController1: UIViewController {

    @IBOutlet weak var textField: UITextField!

    // Declare a closure property to hold the data to be passed
    var onDataAvailable: ((String) -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func nextButtonTapped(_ sender: UIButton) {
        guard let text = textField.text, !text.isEmpty else {
            // Handle empty text field if needed
            return
        }

        // Call the closure and pass the data to ViewController2
        onDataAvailable?(text)

        // Navigate to ViewController2
        let storyboard = UIStoryboard(name: "Closure", bundle: nil)
        if let viewController2 = storyboard.instantiateViewController(withIdentifier: "ViewController2") as? ViewController2 {
            
            // Set the closure of ViewController2 to receive the data
            viewController2.receivedData = text
            
            self.navigationController?.pushViewController(viewController2, animated: true)
        }
    }
}
