//
//  ViewController.swift
//  trafficLights
//
//  Created by Ruslan Bihun on 05.12.2021.
//

import UIKit

class ViewController: UIViewController {
    
   
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func startButtonPressed(_ sender: UIButton) {
    }
    

}

