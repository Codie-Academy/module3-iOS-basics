//
//  CustomViewController.swift
//  Module3
//
//  Created by Codie Academy on 28.1.24..
//  Copyright © 2024 Codie Academy. All rights reserved.
//

import UIKit

class CustomViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func buttonPressed(_ sender: Any) {
        label.text = "Codie Academy\nModule 3\nLesson 3\nUIViewController, Storyboards, UIViewController Lifecycle"
    }
}
