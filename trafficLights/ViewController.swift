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
    
    var clickCounter = 1
    
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.backgroundColor = UIColor.red.withAlphaComponent(0.3)
        yellowLight.backgroundColor = UIColor.yellow.withAlphaComponent(0.3)
        greenLight.backgroundColor = UIColor.green.withAlphaComponent(0.3)
    }
    
    
    @IBAction func startButtonPressed(_ sender: UIButton) {
        pushButton()
        startButton.setTitle("NEXT", for: .normal)
    }
    
    // Light switch
    func pushButton() {
        
        switch clickCounter {
        case 1:
            clickCounter += 1
            redLight.backgroundColor = UIColor.red.withAlphaComponent(1)
            yellowLight.backgroundColor = UIColor.yellow.withAlphaComponent(0.3)
            greenLight.backgroundColor = UIColor.green.withAlphaComponent(0.3)
            
        case 2:
            clickCounter += 1
            redLight.backgroundColor = UIColor.red.withAlphaComponent(0.3)
            yellowLight.backgroundColor = UIColor.yellow.withAlphaComponent(1)
            greenLight.backgroundColor = UIColor.green.withAlphaComponent(0.3)
            
        case 3:
            clickCounter -= 2
            redLight.backgroundColor = UIColor.red.withAlphaComponent(0.3)
            yellowLight.backgroundColor = UIColor.yellow.withAlphaComponent(0.3)
            greenLight.backgroundColor = UIColor.green.withAlphaComponent(1)
      
        default:
        break
        }
        
    }
    }
