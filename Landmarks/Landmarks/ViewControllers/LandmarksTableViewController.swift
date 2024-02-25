//
//  LandmarksTableViewController.swift
//  Landmarks
//
//  Created by Codie Academy on 25.2.24..
//

import UIKit

class LandmarksTableViewController: UITableViewController {

    var landmarks = ModelData.landmarks

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem

        setupTableView()
    }

    private func setupTableView() {
        tableView.register(UINib(nibName: "LandmarkTableViewCell", bundle: .main), forCellReuseIdentifier: LandmarkTableViewCell.reuseIdentifier)
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarks.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: LandmarkTableViewCell.reuseIdentifier, for: indexPath) as? LandmarkTableViewCell {

            let landmark = landmarks[indexPath.row]
            cell.landmarkPhoto.image = UIImage(named: landmark.imageName)
            cell.nameLabel.text = landmark.name

            return cell
        } else {
            return UITableViewCell()
        }
    }

    // MARK: - Table View Delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)

        performSegue(withIdentifier: "ToLandmarkDetailsViewController", sender: landmarks[indexPath.row])
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToLandmarkDetailsViewController" {
            if let landmark = sender as? Landmark,
               let landmarkDetailsVC = segue.destination as? LandmarkDetailsViewController {
                landmarkDetailsVC.landmark = landmark
            }
        }
    }

}
