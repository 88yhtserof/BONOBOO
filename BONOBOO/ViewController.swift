//
//  ViewController.swift
//  BONOBOO
//
//  Created by limyunhwi on 2021/11/06.
//

import UIKit

class ViewController: UIViewController {
    
    var day: String = ""
    
    @IBOutlet weak var lblYear: UILabel!
    @IBOutlet weak var lblMonth: UILabel!
    @IBOutlet weak var imgPoster: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tapImageView()
        setCurrentDate()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setNavigationBar()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "MainDateViewController" {
            let mainDateVC = segue.destination as! MainDateViewController
            mainDateVC.delegate = self
        }
        else if segue.identifier == "BtnStarViewController" {
            
        }
    }
    
    func setCurrentDate() {
        let currentDate = NSDate()
        let formatter = DateFormatter()
        
        formatter.dateFormat = "d"
        day = formatter.string(from: currentDate as Date)
        formatter.dateFormat = "yyyy"
        lblYear.text = formatter.string(from: currentDate as Date)
        formatter.dateFormat = "MMMM"
        lblMonth.text = formatter.string(from: currentDate as Date)
    }
    
    func tapImageView() {
        let recognizerImage = UITapGestureRecognizer(target: self, action: #selector(tapActionImageView))
        imgPoster.isUserInteractionEnabled = true
        imgPoster.addGestureRecognizer(recognizerImage)
        
    }
    
    @objc func tapActionImageView(sender: UITapGestureRecognizer) {
        guard let viewController = self.storyboard?.instantiateViewController(identifier: "DetailContentViewController") else{return}
        
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    func setNavigationBar() {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
}

extension ViewController : MainDateDelegate {
    func passDate(day: String, month: String, year: String) {
        self.day = day
        self.lblMonth.text = month
        self.lblYear.text = year
    }
}
