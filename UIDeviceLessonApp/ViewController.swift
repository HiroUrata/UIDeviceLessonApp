//
//  ViewController.swift
//  UIDeviceLessonApp
//
//  Created by UrataHiroki on 2021/09/17.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var detectionStartButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detectionStartButton.layer.cornerRadius = 18.0
        detectionStartButton.layer.shadowOffset = CGSize(width: 1, height: 1)
        detectionStartButton.layer.shadowRadius = 10.0
        detectionStartButton.layer.shadowOpacity = 0.6
        
        
    }
    
    
    @IBAction func detectionStart(_ sender: Any) {
        
        UIDevice.current.beginGeneratingDeviceOrientationNotifications()
        
        NotificationCenter.default.addObserver(self, selector: #selector(devicOrientationDetection), name: UIDevice.orientationDidChangeNotification, object: nil)
    }
    
    @objc func devicOrientationDetection(){
        


    }
}

