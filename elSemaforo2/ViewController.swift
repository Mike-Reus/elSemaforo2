//
//  ViewController.swift
//  elSemaforo2
//
//  Created by M B on 21.08.2021.
//

import UIKit

enum currentLight {
    case red, yellow, green
}

class ViewController: UIViewController {

    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowlight: UIView!
    @IBOutlet weak var greenLight: UIView!
    
    
    
    @IBOutlet weak var startBottom: UIButton!
    
    private var currentLilght = currentLight.red
    private var LightIsOn: CGFloat = 1
    private var LightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startBottom.layer.cornerRadius = 10
        
        redLight.alpha = LightIsOff
        yellowlight.alpha = LightIsOff
        greenLight.alpha = LightIsOff
        
        print("размер стороны, доступный в методе viewdidLoad: \(redLight.frame.height)")
    }
    
    override func viewWillLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.frame.width/2
        yellowlight.layer.cornerRadius = redLight.frame.width/2
        greenLight.layer.cornerRadius = redLight.frame.width/2
        
        print("размер стороны, доступный в методе viewdidLoad: \(redLight.frame.height)")
        
    }
    @IBAction func startBottomPressed() {
        if startBottom.currentTitle == "START" {
            startBottom.setTitle("NEXT", for: .normal)
        }
        switch currentLilght {
        case .red:
            greenLight.alpha = LightIsOff
            redLight.alpha = LightIsOn
            currentLilght = .yellow
        case .yellow:
            redLight.alpha = LightIsOff
            yellowlight.alpha = LightIsOn
            currentLilght = .green
        case .green:
        greenLight.alpha = LightIsOn
        yellowlight.alpha = LightIsOff
        currentLilght = .red
            
        }
    }
    }
