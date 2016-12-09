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


}
