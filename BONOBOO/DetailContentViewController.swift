//
//  DetailContentViewController.swift
//  BONOBOO
//
//  Created by limyunhwi on 2021/11/18.
//

import UIKit

class DetailContentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setNavigationBar()
    }
    
    func setNavigationBar() {
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
}
