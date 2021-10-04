//
//  ViewController.swift
//  HT11Animation
//
//  Created by Виктория Савич on 3.10.21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var image: UIImageView!
    @IBAction func startButton(_ sender: Any) {
        guard self.timer == nil else {
            return
        }
        let timer = Timer.scheduledTimer(timeInterval: 0.009,
                                         target: self,
                                         selector: #selector(triggerTime),
                                         userInfo: nil,
                                         repeats: true)
        self.timer = timer
    }
    
    @IBAction func actionStopTimer(_ sender: Any) {
        timer?.invalidate()
    }
    
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @objc func triggerTime() {
        if image.frame.maxX < containerView.frame.width && image.frame.minY == 0  {
            image.frame = CGRect(x: image.frame.minX + 1, y: image.frame.minY, width: image.frame.width, height: image.frame.height)
        } else if image.frame.maxY < containerView.frame.height && image.frame.maxX == containerView.frame.width {
            image.frame = CGRect(x: image.frame.minX, y: image.frame.minY + 1, width: image.frame.width, height: image.frame.height)
        } else if image.frame.minX > 0 {
            image.frame = CGRect(x: image.frame.minX - 1, y: image.frame.minY, width: image.frame.width, height: image.frame.height)
        } else if image.frame.minX == 0 && image.frame.minY >= 0 {
            image.frame = CGRect(x: image.frame.minX, y: image.frame.minY - 1, width: image.frame.width, height: image.frame.height)
        }
    }
    
}

