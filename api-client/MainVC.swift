//
//  MainVC.swift
//  api-client
//
//  Created by Grant Rosario on 12/4/16.
//  Copyright © 2016 Grant Rosario. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        DataService.instance.delegate = self
        
        DataService.instance.getAllFoodTrucks()
    }
}

extension MainVC: DataServiceDelegate {
    func trucksLoaded() {
        
    }
    
    func reviewsLoaded() {
    
    }
}
