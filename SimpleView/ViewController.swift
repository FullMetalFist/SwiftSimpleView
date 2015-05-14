//
//  ViewController.swift
//  SimpleView
//
//  Created by Michael Vilabrera on 5/12/15.
//  Copyright (c) 2015 Giving Tree. All rights reserved.
//

import UIKit
import CoreGraphics

class ViewController: UIViewController {
    
    var slider: UISlider!
    var numberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let spinNumber: CGFloat = CGFloat(M_PI) * 0.5
        let transform: CGAffineTransform = CGAffineTransformMakeRotation(spinNumber)
        
        
        slider = UISlider(frame: CGRect(x: 80, y: 180, width: 300, height: 23))
        slider.minimumValue = 0.0
        slider.maximumValue = 100.0
        slider.value = 15.0
        slider.transform = transform
        slider.addTarget(self, action: "sliderValueChanged:", forControlEvents: .ValueChanged)
        self.view.addSubview(slider)
        
        numberLabel = UILabel(frame: CGRectMake(30, 160, 200, 23))
        self.view.addSubview(numberLabel)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func sliderValueChanged(sender: UISlider) {
        // changes the value of the slider
        var currentValue = Int(sender.value)
        
        numberLabel?.text = "\(currentValue)"
    }
}

