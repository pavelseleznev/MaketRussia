//
//  ViewController.swift
//  MaketRussia
//
//  Created by Pavel Seleznev on 4/20/19.
//  Copyright © 2019 Pavel Seleznev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sunRedPause.isHidden = true
    }
    
    @IBOutlet weak var sunGreenOne: UIImageView!
    @IBOutlet weak var sunRedPause: UIImageView!
    @IBOutlet weak var timerLabelOne: UILabel!
    @IBOutlet weak var buttonOne: UIButton!
    
    var seconds = 15
    var timer = Timer()
    
    func runTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(ViewController.updateTimer)), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        seconds -= 1
        timerLabelOne.text = "\(seconds)"
        if seconds == 0 {
            let newImg: UIImage? = UIImage(named: "SunRed")
            self.sunGreenOne.image = newImg
            self.timerLabelOne.text = ""
            sunRedPause.isHidden = false
        }
        if seconds == -15 {
            resetTimer()
            let newImg: UIImage? = UIImage(named: "SunGreen")
            self.sunGreenOne.image = newImg
            self.timerLabelOne.text = ""
            sunRedPause.isHidden = true
        }
    }
    
    @IBAction func rotateImage(_ sender: UIButton) {
        UIView.animate(withDuration: 30.0, delay: 0.0, options: .curveLinear, animations: {
            self.sunGreenOne.transform = CGAffineTransform(rotationAngle: (CGFloat.random(in: 0 ..< 360) * .pi) / 90.0)
        })
        sender.isUserInteractionEnabled = false
        Timer.scheduledTimer(withTimeInterval: 30, repeats: false, block: { _ in
            sender.isUserInteractionEnabled = true
        })
        runTimer()
        let newImg: UIImage? = UIImage(named: "SunGreen")
        self.sunGreenOne.image = newImg
        sunRedPause.isHidden = true
    }
    
    func resetTimer() {
        timer.invalidate()
        seconds = 15
    }
}
