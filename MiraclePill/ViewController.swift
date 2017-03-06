//
//  ViewController.swift
//  MiraclePill
//
//  Created by Kalyan Dechiraju on 22/09/16.
//  Copyright © 2016 Codelight Studios. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerButton: UIButton!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryValue: UITextField!
    @IBOutlet weak var buyNowButton: UIImageView!
    
    let states = ["Andhra Pradesh", "Karnataka", "Telangana", "Gujarat", "Tamil Nadu"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateButtonPressed(_ sender: UIButton) {
        statePickerButton.isHidden = true
        statePicker.isHidden = false
        countryLabel.isHidden = true
        countryValue.isHidden = true
        buyNowButton.isHidden = true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerButton.isHidden = false
        statePickerButton.setTitle(states[row], for: UIControlState())
        statePicker.isHidden = true
        countryLabel.isHidden = false
        countryValue.isHidden = false
        buyNowButton.isHidden = false
    }

}

