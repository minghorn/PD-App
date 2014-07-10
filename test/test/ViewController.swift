//
//  ViewController.swift
//  test
//
//  Created by Cluster 5 on 7/10/14.
//  Copyright (c) 2014 COSMOS. All rights reserved.
//

import UIKit

let audioController = PdAudioController()

class ViewController: UIViewController {
    
    @IBOutlet var slider1: UISlider
    
    @IBOutlet var s1: UISwitch
    
    @IBOutlet var label1: UILabel
                            
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func s1action(sender: UISwitch) {
        if sender.on {
            PdBase.computeAudio(true)
        }
        else {
            PdBase.computeAudio(false)
        }
        

    }
    
    @IBAction func slider1action(sender: UISlider) {
        var sliderValue = sender.value
        label1.text = String(sliderValue)
        PdBase.sendFloat(slider1.value, toReceiver: "slider")
        
    }
}

