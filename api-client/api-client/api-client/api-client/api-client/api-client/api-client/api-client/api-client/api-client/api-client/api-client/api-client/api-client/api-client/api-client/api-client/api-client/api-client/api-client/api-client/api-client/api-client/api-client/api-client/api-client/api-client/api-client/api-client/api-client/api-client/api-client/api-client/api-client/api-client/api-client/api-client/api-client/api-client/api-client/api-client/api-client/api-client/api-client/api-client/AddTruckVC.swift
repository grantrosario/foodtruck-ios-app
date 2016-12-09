//
//  AddTruckVC.swift
//  api-client
//
//  Created by Grant Rosario on 12/8/16.
//  Copyright © 2016 Grant Rosario. All rights reserved.
//

import UIKit

class AddTruckVC: UIViewController {
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var foodTypeField: UITextField!
    @IBOutlet weak var avgCostField: UITextField!
    @IBOutlet weak var latField: UITextField!
    @IBOutlet weak var longField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func addButtonTapped(sender: UIButton) {
        guard let name = nameField.text, nameField.text != ""
            else {
                showAlert(with: "Error", message: "Please enter a name")
                return
        }
        guard let foodtype = foodTypeField.text, foodTypeField.text != ""
            else {
                showAlert(with: "Error", message: "Please enter a food type")
                return
        }
        guard let avgcost = Double(avgCostField.text!), avgCostField.text != ""
            else {
                showAlert(with: "Error", message: "Please enter an average cost")
                return
        }
        guard let latitude = Double(latField.text!), latField.text != ""
            else {
                showAlert(with: "Error", message: "Please enter a latitude")
                return
        }
        guard let longitude = Double(longField.text!), longField.text != ""
            else {
                showAlert(with: "Error", message: "Please enter a longitude")
                return
        }
        DataService.instance.addNewFoodTruck(name, foodtype: foodtype, avgcost: avgcost, latitude: latitude, longitude: longitude, completion: {
            Success in
            
            if Success {
                print("We saved successfully")
                self.dismissViewController()
            } else {
                self.showAlert(with: "Error", message: "An error occurred saving the new food truck")
                print("Did not save successfully")
            }
        })
        
    }
    
    @IBAction func cancelButtonTapped(sender: UIButton) {
        dismissViewController()
    }

    @IBAction func backButtonTapped(sender: UIButton) {
        dismissViewController()
    }
    
    func dismissViewController() {
        OperationQueue.main.addOperation {
            _ = self.navigationController?.popViewController(animated: true)
        }
    }
    
    func showAlert(with title: String?, message: String?) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }
}
