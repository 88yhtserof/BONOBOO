//
//  MainDateViewController.swift
//  BONOBOO
//
//  Created by limyunhwi on 2021/11/07.
//

import UIKit

protocol MainDateDelegate {
    func passDate(day: String, month: String, year: String)
}

class MainDateViewController: UIViewController {

    var delegate: MainDateDelegate?
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        datePicker.backgroundColor = .white
    }
    
    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        var day = ""
        var month = ""
        var year = ""
        
        let datepick = sender
        let fomatter = DateFormatter()
        
        fomatter.dateFormat = "d"
        day = fomatter.string(from: datepick.date)
        fomatter.dateFormat = "MMMM"
        month = fomatter.string(from: datepick.date)
        fomatter.dateFormat = "YYYY"
        year = fomatter.string(from: datepick.date)
     
        guard let resultDelegate = delegate else {return}
        resultDelegate.passDate(day: day, month: month, year: year)
        
        dismiss(animated: true, completion: nil)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
