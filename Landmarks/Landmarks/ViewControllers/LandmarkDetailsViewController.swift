//
//  LandmarkDetailsViewController.swift
//  Landmarks
//
//  Created by Codie Academy on 25.2.24..
//

import UIKit

class LandmarkDetailsViewController: UIViewController {
    enum Constants {
        enum AccessibilityIdentifiers {
            static let nameLabel = "nameLabel"
            static let landmarkImage = "landmarkImage"
            static let imageAuthorLabel = "imageAuthorLabel"
            static let aboutLabel = "aboutLabel"
        }
    }
    
    var landmark: Landmark!

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var landmarkImage: UIImageView!
    @IBOutlet weak var imageAuthorLabel: UILabel!
    @IBOutlet weak var aboutLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        displayData()
        setAccessibilityIdentifiers()
    }
    
    private func displayData() {
        guard let landmark = landmark else { return }

        nameLabel.text = landmark.name
        landmarkImage.image = UIImage(named: landmark.imageName)
        imageAuthorLabel.text = landmark.imageAuthor
        aboutLabel.text = landmark.about
    }

    private func setAccessibilityIdentifiers() {
        nameLabel.accessibilityIdentifier = Constants.AccessibilityIdentifiers.nameLabel
        landmarkImage.accessibilityIdentifier = Constants.AccessibilityIdentifiers.landmarkImage
        imageAuthorLabel.accessibilityIdentifier = Constants.AccessibilityIdentifiers.imageAuthorLabel
        aboutLabel.accessibilityIdentifier = Constants.AccessibilityIdentifiers.aboutLabel
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
