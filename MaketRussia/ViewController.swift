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
        sunRedPauseTwo.isHidden = true
        sunRedPauseThree.isHidden = true
        sunRedPauseFour.isHidden = true
    }
    
    @IBOutlet weak var sunGreenOne: UIImageView!
    @IBOutlet weak var sunRedPause: UIImageView!
    @IBOutlet weak var timerLabelOne: UILabel!
    @IBOutlet weak var buttonOne: UIButton!
    
    @IBOutlet weak var sunGreenTwo: UIImageView!
    @IBOutlet weak var sunRedPauseTwo: UIImageView!
    @IBOutlet weak var timerLabelTwo: UILabel!
    @IBOutlet weak var buttonTwo: UIButton!
    
    @IBOutlet weak var sunGreenThree: UIImageView!
    @IBOutlet weak var sunRedPauseThree: UIImageView!
    @IBOutlet weak var timerLabelThree: UILabel!
    @IBOutlet weak var buttonThree: UIButton!
    
    @IBOutlet weak var sunGreenFour: UIImageView!
    @IBOutlet weak var sunRedPauseFour: UIImageView!
    @IBOutlet weak var timerLabelFour: UILabel!
    @IBOutlet weak var buttonFour: UIButton!
    
    var seconds = 15
    var timer = Timer()
    
    func runTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(ViewController.updateTimer)), userInfo: nil, repeats: true)
    }
    
    func runTimerTwo() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(ViewController.updateTimerTwo)), userInfo: nil, repeats: true)
    }
    
    func runTimerThree() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(ViewController.updateTimerThree)), userInfo: nil, repeats: true)
    }
    
    func runTimerFour() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(ViewController.updateTimerFour)), userInfo: nil, repeats: true)
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
    
    @objc func updateTimerTwo() {
        seconds -= 1
        timerLabelTwo.text = "\(seconds)"
        if seconds == 0 {
            let newImg: UIImage? = UIImage(named: "SunRed")
            self.sunGreenTwo.image = newImg
            self.timerLabelTwo.text = ""
            sunRedPauseTwo.isHidden = false
        }
        if seconds == -15 {
            resetTimer()
            let newImg: UIImage? = UIImage(named: "SunGreen")
            self.sunGreenTwo.image = newImg
            self.timerLabelTwo.text = ""
            sunRedPauseTwo.isHidden = true
        }
    }
    
    @objc func updateTimerThree() {
        seconds -= 1
        timerLabelThree.text = "\(seconds)"
        if seconds == 0 {
            let newImg: UIImage? = UIImage(named: "SunRed")
            self.sunGreenThree.image = newImg
            self.timerLabelThree.text = ""
            sunRedPauseThree.isHidden = false
        }
        if seconds == -15 {
            resetTimerThree()
            let newImg: UIImage? = UIImage(named: "SunGreen")
            self.sunGreenThree.image = newImg
            self.timerLabelThree.text = ""
            sunRedPauseThree.isHidden = true
        }
    }
    
    @objc func updateTimerFour() {
        seconds -= 1
        timerLabelFour.text = "\(seconds)"
        if seconds == 0 {
            let newImg: UIImage? = UIImage(named: "SunRed")
            self.sunGreenFour.image = newImg
            self.timerLabelFour.text = ""
            sunRedPauseFour.isHidden = false
        }
        if seconds == -15 {
            resetTimerFour()
            let newImg: UIImage? = UIImage(named: "SunGreen")
            self.sunGreenFour.image = newImg
            self.timerLabelFour.text = ""
            sunRedPauseFour.isHidden = true
        }
    }
    
    @IBAction func rotateImage(_ sender: UIButton) {
        buttonTwo.isEnabled = false
        buttonThree.isEnabled = false
        buttonFour.isEnabled = false
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
    
    @IBAction func rotateImageTwo(_ sender: UIButton) {
        buttonOne.isEnabled = false
        buttonThree.isEnabled = false
        buttonFour.isEnabled = false
        UIView.animate(withDuration: 30.0, delay: 0.0, options: .curveLinear, animations: {
            self.sunGreenTwo.transform = CGAffineTransform(rotationAngle: (CGFloat.random(in: 0 ..< 360) * .pi) / 90.0)
        })
        sender.isUserInteractionEnabled = false
        Timer.scheduledTimer(withTimeInterval: 30, repeats: false, block: { _ in
            sender.isUserInteractionEnabled = true
        })
        runTimerTwo()
        let newImg: UIImage? = UIImage(named: "SunGreen")
        self.sunGreenTwo.image = newImg
        sunRedPauseTwo.isHidden = true
    }
    
    @IBAction func rotateImageThree(_ sender: UIButton) {
        buttonOne.isEnabled = false
        buttonTwo.isEnabled = false
        buttonFour.isEnabled = false
        UIView.animate(withDuration: 30.0, delay: 0.0, options: .curveLinear, animations: {
            self.sunGreenThree.transform = CGAffineTransform(rotationAngle: (CGFloat.random(in: 0 ..< 360) * .pi) / 90.0)
        })
        sender.isUserInteractionEnabled = false
        Timer.scheduledTimer(withTimeInterval: 30, repeats: false, block: { _ in
            sender.isUserInteractionEnabled = true
        })
        runTimerThree()
        let newImg: UIImage? = UIImage(named: "SunGreen")
        self.sunGreenThree.image = newImg
        sunRedPauseThree.isHidden = true
    }
    
    @IBAction func rotateImageFour(_ sender: UIButton) {
        buttonOne.isEnabled = false
        buttonTwo.isEnabled = false
        buttonThree.isEnabled = false
        UIView.animate(withDuration: 30.0, delay: 0.0, options: .curveLinear, animations: {
            self.sunGreenFour.transform = CGAffineTransform(rotationAngle: (CGFloat.random(in: 0 ..< 360) * .pi) / 90.0)
        })
        sender.isUserInteractionEnabled = false
        Timer.scheduledTimer(withTimeInterval: 30, repeats: false, block: { _ in
            sender.isUserInteractionEnabled = true
        })
        runTimerFour()
        let newImg: UIImage? = UIImage(named: "SunGreen")
        self.sunGreenFour.image = newImg
        sunRedPauseFour.isHidden = true
    }
    
    func resetTimer() {
        timer.invalidate()
        seconds = 15
        buttonTwo.isEnabled = true
        buttonThree.isEnabled = true
        buttonFour.isEnabled = true
    }
    
    func resetTimerTwo() {
        timer.invalidate()
        seconds = 15
        buttonOne.isEnabled = true
        buttonThree.isEnabled = true
        buttonFour.isEnabled = true
    }
    
    func resetTimerThree() {
        timer.invalidate()
        seconds = 15
        buttonOne.isEnabled = true
        buttonTwo.isEnabled = true
        buttonFour.isEnabled = true
    }
    
    func resetTimerFour() {
        timer.invalidate()
        seconds = 15
        buttonOne.isEnabled = true
        buttonTwo.isEnabled = true
        buttonThree.isEnabled = true
    }
}
