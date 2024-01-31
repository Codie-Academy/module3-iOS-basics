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
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var stackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupLabel()
        setupButton()
        setupImageView()
        setupTextField()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func buttonTapped(_ sender: Any) {
        // Create new label
        let newLabel = UILabel()
        newLabel.text = "New Label"

        // Add the label to the stack view
        stackView.addArrangedSubview(newLabel)
    }

    private func setupLabel() {
        label.text = "Hello, students!"
        label.font = UIFont.systemFont(ofSize: 14)
        label.textAlignment = .center
        label.textColor = .red
        label.numberOfLines = 0
    }

    private func setupButton() {
        button.setTitle("PRESS", for: .normal) // .disabled, .selected etc.
        button.setTitleColor(.red, for: .normal)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }

    private func setupImageView() {
        imageView.image = UIImage(named: "background")
        imageView.backgroundColor = .clear
    }

    private func setupTextField() {
        textField.delegate = self
    }
}

extension CustomViewController: UITextFieldDelegate {
    // Tells the delegate when the text selection changes in the specified text field.
    func textFieldDidChangeSelection(_ textField: UITextField) {
        print("Text changed: \(textField.text ?? "")")
    }

    // Asks the delegate whether to process the pressing of the Return button for the text field.
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Dismiss the keyboard
        textField.resignFirstResponder()
        return true
    }
}
