//
//  ViewController.swift
//  trafficLights
//
//  Created by Ruslan Bihun on 05.12.2021.
//

import UIKit
enum CurrontLight {
    case red, yellow, green
}
class ViewController: UIViewController {
    
   
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    private var currontLight = CurrontLight.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 15
        redLight.alpha = lightIsOff
        yellowLight.alpha = lightIsOff
        greenLight.alpha = lightIsOff
        redLight.layer.cornerRadius = 65
        yellowLight.layer.cornerRadius = 65
        greenLight.layer.cornerRadius = 65
    }
    
    
    @IBAction func startButtonPressed(_ sender: UIButton) {
        pushButton()
        startButton.setTitle("NEXT", for: .normal)
    }
    
    // Light switch
    func pushButton() {
        
        switch currontLight {
        case .red:
            currontLight = .yellow
            redLight.alpha = lightIsOn
            greenLight.alpha = lightIsOff
            
        case .yellow:
            currontLight = .green
            redLight.alpha = lightIsOff
            yellowLight.alpha = lightIsOn
            
        case .green:
            currontLight = .red
            yellowLight.alpha = lightIsOff
            greenLight.alpha = lightIsOn
        }
        
    }
    }
