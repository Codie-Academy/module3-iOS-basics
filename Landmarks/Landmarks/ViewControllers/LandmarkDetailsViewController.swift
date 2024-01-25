//
//  LandmarkDetailsViewController.swift
//  Landmarks
//
//  Created by Dusan Durakovic on 24.1.24..
//

import UIKit

class LandmarkDetailsViewController: UIViewController {

    var landmark: Landmark!

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var landmarkImage: UIImageView!
    @IBOutlet weak var imageAuthorLabel: UILabel!
    @IBOutlet weak var aboutLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        displayData()
    }
    
    // MARK: - Setup data

    func displayData() {
        guard let landmark = landmark else { return }

        nameLabel.text = landmark.name
        landmarkImage.image = UIImage(named: landmark.imageName)
        imageAuthorLabel.text = landmark.imageAuthor
        aboutLabel.text = landmark.about
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
