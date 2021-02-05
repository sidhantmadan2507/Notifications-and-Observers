//
//  SecondViewController.swift
//  NotificationsAndObservers
//
//  Created by Sidhant Madan on 04/02/21.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func option1(_ sender: Any) {
        let name = Notification.Name(rawValue: goodMorning)
        NotificationCenter.default.post(name: name, object: nil)
        dismiss(animated: true, completion: nil)
    }
    @IBAction func option2(_ sender: Any) {
        let name = Notification.Name(rawValue: goodNight)
        NotificationCenter.default.post(name: name, object: nil)
        dismiss(animated: true, completion: nil)
    }
}
