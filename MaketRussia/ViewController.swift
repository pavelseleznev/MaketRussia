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
    }
    
    @IBOutlet weak var timerLabelOne: UILabel!
    @IBOutlet weak var timerLabelTwo: UILabel!
    @IBOutlet weak var timerLabelThree: UILabel!
    @IBOutlet weak var timerLabelFour: UILabel!
    
    @IBOutlet weak var buttonOne: UILabel!
    @IBOutlet weak var buttonTwo: UIButton!
    @IBOutlet weak var buttonThree: UIButton!
    @IBOutlet weak var buttonFour: UIButton!
    
    var countDownTimer: Timer!
    var totalTime = 15
    
    func startTimerOne() {
        countDownTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTimeOne), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimeOne() {
        timerLabelOne.text = "\(timeFormatted(totalTime))"
        
        if totalTime != 0 {
            totalTime -= 1
        } else {
            endTimer()
            callAfter(0.0, text: "Text1") { text in
                self.timerLabelOne.text = "||"
                
                self.buttonOne.backgroundColor = UIColor.red
            }
            callAfter(15.0, text: "Text1") { text in
                self.timerLabelOne.text = ""
                self.buttonOne.layer.cornerRadius = 65
                self.buttonOne.backgroundColor = UIColor.green
            }
            
        }
    }
    
    func startTimerTwo() {
        countDownTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTimeTwo), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimeTwo() {
        timerLabelTwo.text = "\(timeFormatted(totalTime))"
        
        if totalTime != 0 {
            totalTime -= 1
        } else {
            endTimer()
            callAfter(0.0, text: "Text1") { text in
                self.timerLabelTwo.text = "||"
                
                self.buttonTwo.backgroundColor = UIColor.red
            }
            callAfter(15.0, text: "Text1") { text in
                self.timerLabelTwo.text = ""
                self.buttonTwo.layer.cornerRadius = 65
                self.buttonTwo.backgroundColor = UIColor.green
            }
            
        }
    }
    
    func startTimerThree() {
        countDownTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTimeThree), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimeThree() {
        timerLabelThree.text = "\(timeFormatted(totalTime))"
        
        if totalTime != 0 {
            totalTime -= 1
        } else {
            endTimer()
            callAfter(0.0, text: "Text1") { text in
                self.timerLabelThree.text = "||"
                
                self.buttonThree.backgroundColor = UIColor.red
            }
            callAfter(15.0, text: "Text1") { text in
                self.timerLabelThree.text = ""
                self.buttonThree.layer.cornerRadius = 65
                self.buttonThree.backgroundColor = UIColor.green
            }
            
        }
    }
    
    func startTimerFour() {
        countDownTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTimeFour), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimeFour() {
        timerLabelFour.text = "\(timeFormatted(totalTime))"
        
        if totalTime != 0 {
            totalTime -= 1
        } else {
            endTimer()
            callAfter(0.0, text: "Text1") { text in
                self.timerLabelFour.text = "||"
                
                self.buttonFour.backgroundColor = UIColor.red
            }
            callAfter(15.0, text: "Text1") { text in
                self.timerLabelFour.text = ""
                self.buttonFour.layer.cornerRadius = 65
                self.buttonFour.backgroundColor = UIColor.green
            }
            
        }
    }
    
    func endTimer() {
        countDownTimer.invalidate()
        totalTime = 15
    }
    
    func timeFormatted(_ totalSeconds: Int) -> String {
        let seconds: Int = totalSeconds % 60
        //     let hours: Int = totalSeconds / 3600
        return String(format: "%02d", seconds)
    }
    
    func callAfter(_ duration: Double, text: String, _ completion: @escaping (String)->Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + duration) {
            completion(text)
        }
    }
    
    func call(_ completion: @escaping (String)->Void) {
        completion("SomeText")
    }
    
    /*
     let pianoSound = URL(fileURLWithPath: Bundle.main.path(forResource: "btn_click_sound", ofType: "mp3")!)
     var audioPlayer = AVAudioPlayer()
     */
    
    /*
     @IBAction func PianoC(sender: AnyObject) {
     do {
     audioPlayer = try AVAudioPlayer(contentsOf: pianoSound)
     audioPlayer.play()
     } catch {
     // couldn't load file :(
     }
     }
     */
    
    @IBAction func buttonOne(_ sender: UIButton) {
        startTimerOne()
    }
    
    @IBAction func buttonTwo(_ sender: UIButton) {
        startTimerTwo()
    }
    
    @IBAction func buttonThree(_ sender: UIButton) {
        startTimerThree()
    }
    
    
    @IBAction func buttonFour(_ sender: UIButton) {
        startTimerFour()
    }
}

