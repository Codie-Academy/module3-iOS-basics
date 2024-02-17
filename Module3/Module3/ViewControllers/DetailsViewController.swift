//
//  DetailsViewController.swift
//  Module3
//
//  Created by Codie Academy on 6.2.24..
//  Copyright © 2024 Codie Academy. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    var number: Int!
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupLabel()
    }
    
    private func setupLabel() {
        if let number = self.number {
            label.text = "Image \(number)"
        } else {
            label.text = "Number not set"
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
