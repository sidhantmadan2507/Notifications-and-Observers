//
//  ViewController.swift
//  NotificationsAndObservers
//
//  Created by Sidhant Madan on 04/02/21.
//

import UIKit

let goodMorning = "Good Morning"
let goodNight = "Good Night"

class ViewController: UIViewController {
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    
    let morning = Notification.Name(rawValue: goodMorning)
    let night = Notification.Name(rawValue: goodNight)
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        submitButton.layer.cornerRadius = submitButton.frame.size.height/2
        performTask()
    }
    
    func performTask() {
        //for morning
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.changeText(notification:)), name: morning, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.changeImage(notification:)), name: morning, object: nil)
        //for night
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.changeText(notification:)), name: night, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.changeImage(notification:)), name: night, object: nil)
    }
    @objc func changeText(notification: NSNotification) {
        if notification.name == morning {
            textLabel.text = goodMorning
        }
        else {
            textLabel.text = goodNight
        }
    }
    @objc func changeImage(notification: NSNotification) {
        if notification.name == morning {
            imageView.backgroundColor = .red
        }
        else {
            imageView.backgroundColor = .blue
        }
    }
    
    @IBAction func submitButton(_ sender: Any) {
        let secondVc = storyboard?.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        present(secondVc, animated: true, completion: nil)
    }
    
}

