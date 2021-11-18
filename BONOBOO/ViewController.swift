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
        print("tap1")
        //let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let viewController = self.storyboard?.instantiateViewController(identifier: "DetailContentViewController") else{return}
        print(self)
        //self가 NavigationViewController가 아니라서 navigationVContoller 동작 안 한다.
        
        //self.present(viewController, animated: true, completion: nil)
        self.navigationController?.pushViewController(viewController, animated: true)
        print("tap2")
    }
}

