//
//  ViewController.swift
//  BONOBOO
//
//  Created by limyunhwi on 2021/11/06.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imgPoster: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tapImageView()
    }
    
    func tapImageView() {
        let recognizerImage = UITapGestureRecognizer(target: self, action: #selector(tapActionImageView))
        imgPoster.isUserInteractionEnabled = true
        imgPoster.addGestureRecognizer(recognizerImage)
        
    }
    
    @objc func tapActionImageView(sender: UITapGestureRecognizer) {
        print("Tap")
    }
}

