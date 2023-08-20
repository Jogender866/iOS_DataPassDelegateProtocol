//
//  ViewController2.swift
//  DataPassingTechs_iOS_UIKit
//
//  Created by Jogender Singh on 22/07/23.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var label: UILabel!
    var receivedData: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        displayReceivedData()
    }

    func displayReceivedData() {
        if let data = receivedData {
            label.text = data
        }
    }
}
