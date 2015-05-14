//
//  ViewController.swift
//  SimpleView
//
//  Created by Michael Vilabrera on 5/12/15.
//  Copyright (c) 2015 Giving Tree. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var slider: UISlider!
    var numberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        slider = UISlider(frame: CGRect(x: 0, y: 80, width: 200, height: 23))
        slider.minimumValue = 0.0
        slider.maximumValue = 100.0
        slider.value = 15.0
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

