//
//  DetailsVC.swift
//  api-client
//
//  Created by Grant Rosario on 12/9/16.
//  Copyright © 2016 Grant Rosario. All rights reserved.
//

import UIKit
import MapKit

class DetailsVC: UIViewController {

    
    var selectedFoodTruck: FoodTruck?
    var logInVC: LogInVC?
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var foodtypeLabel: UILabel!
    @IBOutlet weak var avgCostLabel: UILabel!
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = selectedFoodTruck?.name
        foodtypeLabel.text = selectedFoodTruck?.foodType
        avgCostLabel.text = "\(selectedFoodTruck!.avgCost)"
        
        mapView.addAnnotation(selectedFoodTruck!)
        centerMapOnLocation(CLLocation(latitude: selectedFoodTruck!.lat, longitude: selectedFoodTruck!.long))
    }
    
    func centerMapOnLocation(_ location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(selectedFoodTruck!.coordinate, 1000, 1000)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    
    @IBAction func backButtonTapped(sender: UIButton) {
        _ = navigationController?.popViewController(animated: true)
    }
    
    @IBAction func reviewsButtonTapped(sender: UIButton) {
        performSegue(withIdentifier: "showReviewsVC", sender: self)
    }
    
    @IBAction func addReviewButtonTapped(sender: UIButton) {
        
    }
    
    func showLogInVC() {
        logInVC = LogInVC()
        logInVC?.modalPresentationStyle = UIModalPresentationStyle.formSheet
        self.present(logInVC!, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showReviewsVC" {
            let destinationViewController = segue.destination as! ReviewsVC
            destinationViewController.selectedFoodTruck = selectedFoodTruck
        } else if segue.identifier == "showAddReviewVC" {
            let destinationViewController = segue.destination as! AddReviewVC
            destinationViewController.selectedFoodTruck = selectedFoodTruck
        }
    }


}
