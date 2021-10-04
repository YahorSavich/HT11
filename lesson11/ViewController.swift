//
//  ViewController.swift
//  lesson11
//
//  Created by Виктория Савич on 28.09.21.
//

import UIKit

class ViewController: UIViewController {
  
//    @IBAction func actionAnimate(_ sender: Any) {
////        1  подымает вверх
//        UIView.animate(withDuration: 0.5) {
//            self.imageView.frame = CGRect(x: self.imageView.frame.minX, y: self.imageView.frame.minY + 50, width: self.imageView.frame.width, height: self.imageView.frame.height)
//        }
//       2 опускает вниз и подвмает обратно
//        UIView.animate(withDuration: 0.5, delay: 0.01, options: .autoreverse) {
//            self.imageView.frame = CGRect(x: self.imageView.frame.minX, y: self.imageView.frame.minY + 50, width: self.imageView.frame.width, height: self.imageView.frame.height)
//        } completion: { isFinished in
//            self.view.setNeedsLayout()
//            self.view.layoutIfNeeded()
//
//        }
//       3 увеличивает и возвращает назад анимированно
//        UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut) {
//        self.imageView.transform = CGAffineTransform(scaleX: 2, y: 2)
////        view.setNeedsLayout()
////        view.layoutIfNeeded()
//    }
//        UIView.animate(withDuration: 0.5, delay: 0.5, options: .curveEaseOut) {
//            self.imageView.transform = CGAffineTransform.identity
//        }
//    }
    
//    @IBOutlet weak var imageView: UIImageView!
    
    
//     Timer
//    создали и запустили таймер
//    var timer: Timer?
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        let timer = Timer.scheduledTimer(timeInterval: 1,
//                          target: self,
//                          selector: #selector(triggerTime),
//                          userInfo: nil,
//                          repeats: true)
//        self.timer = timer
//    }
//
//    @objc func triggerTime() {
//        print("jjjj")
//    }
//
//    @IBAction func actionStopTimer(_ sender: Any) {
//        timer?.invalidate()
//    }
//
//    запустили опускание кнопки через таймер каждую долю секунды
//    @IBOutlet weak var button: UIButton!
//    var timer: Timer?
//
//    override func viewDidLoad() {
//            super.viewDidLoad()
//        let timer = Timer.scheduledTimer(timeInterval: 0.1,
//                              target: self,
//                              selector: #selector(triggerTime),
//                              userInfo: nil,
//                              repeats: true)
//            self.timer = timer
//        }
//
//        @objc func triggerTime() {
//            button.frame = CGRect(x: button.frame.minX, y: button.frame.minY + 1,width: button.frame.width, height: button.frame.height)
//        }
//
//        @IBAction func actionStopTimer(_ sender: Any) {
//            timer?.invalidate()
//        }
//
//    
}

