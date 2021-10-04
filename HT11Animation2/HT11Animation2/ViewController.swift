//
//  ViewController.swift
//  HT11Animation2
//
//  Created by Виктория Савич on 3.10.21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageViewScene: UIView!
    @IBOutlet weak var image: UIImageView!
    
    var arrayOfPicture = [UIImage(named: "1-1")!, UIImage(named: "2")!, UIImage(named: "3")!, UIImage(named: "4")!, UIImage(named: "5")!]
    var number: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
   @IBAction func actionStart(_ sender: Any) {
        image.image = arrayOfPicture[number]
        
        image.frame = CGRect(x: CGFloat(0 - image.frame.width), y: CGFloat(imageViewScene.frame.height / 2 - image.frame.height / 2), width: image.frame.width, height: image.frame.height)
        
        if number == (arrayOfPicture.count - 1) {
            number = 0
        }
        number += 1
        
        UIView.animate(withDuration: 2, delay: 0, options: .curveEaseOut) { [self] in
            
            image.frame = CGRect(x: CGFloat(imageViewScene.frame.width / 2 + image.frame.height), y: CGFloat(imageViewScene.frame.height / 2 - image.frame.height / 2), width: image.frame.width, height: image.frame.height)
        }
    completion: { [self] isFinished in
        
        UIView.animate(withDuration: 2, delay: 0, options: .curveEaseOut) {
            
            image.frame = CGRect(x: CGFloat(imageViewScene.frame.width / 2 + imageViewScene.frame.width), y: CGFloat(imageViewScene.frame.height / 2 - image.frame.height / 2), width: image.frame.width, height: image.frame.height)
            }
        }
    }
}


