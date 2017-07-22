//
//  ViewController.swift
//  ClickCounter
//
//  Created by Christian Villere on 7/16/17.
//  Copyright © 2017 Udacity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var label: UILabel!
    var label_inc: UILabel!
    
    var button = UIButton()
    var button_dec = UIButton()

    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Label
        var label = UILabel()
        label.frame = CGRect.init(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        
        var label_inc = UILabel()
        label_inc.frame = CGRect.init(x: 200, y: 200, width: 60, height: 60)
        label_inc.text = "0"
        
        
        self.view.addSubview(label)
        self.label = label
        
        self.view.addSubview(label_inc)
        self.label_inc = label_inc
        
        
        
        // Button
        //var button = UIButton()
        button.frame = CGRect.init(x: 150, y: 250, width: 60, height: 60)
        button.setTitle("Click", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        self.view.addSubview(button)
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControlEvents.touchUpInside)
        button.addTarget(self, action: #selector(backgroundColorChange), for: UIControlEvents.touchUpInside)
        
        
        // Decrement button
        //var button_dec = UIButton()
        button_dec.frame = CGRect.init(x: 250, y: 350, width: 100, height: 80)
        button_dec.setTitle("Click_Dec", for: .normal)
        button_dec.setTitleColor(UIColor.blue, for: .normal)
        self.view.addSubview(button_dec)
        
        
        button_dec.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControlEvents.touchUpInside)
        button_dec.addTarget(self, action: #selector(backgroundColorChange), for: UIControlEvents.touchUpInside)
    
    }
    
    func incrementCount() {
        self.count = self.count + 1
        self.label.text = "\(self.count)"
        self.label_inc.text = "\(self.count)"
    }

    func decrementCount() {
        self.count = self.count - 1
        self.label.text = "\(self.count)"
        self.label_inc.text = "\(self.count)"
    }
    
    //func for background colour change
    func backgroundColorChange(){
        self.view.backgroundColor = getRandomColor()
        
    }
    
    //func for generating random colour
    func getRandomColor() -> UIColor{
        var randomRed:CGFloat = CGFloat(drand48())
        var randomGreen:CGFloat = CGFloat(drand48())
        var randomBlue:CGFloat = CGFloat(drand48())
        
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
    }
       
    
}

