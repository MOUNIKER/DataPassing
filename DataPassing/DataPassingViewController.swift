//
//  DataPassingViewController.swift
//  DataPassing
//
//  Created by Siva Mouniker  on 19/04/23.
//

import UIKit
protocol Datamanager {
    func datapass(a: String)
}

class DataPassingViewController: UIViewController, FirstProtocol {
    func datapassingToSecondVc(data: String) {
        EmailLbl.text = "Email: \(data)"
    }
    
    
    var vcref : ViewController? = nil
    var email = ""
    var password = ""
    var delegates : Datamanager?
    override func viewDidLoad() {
        super.viewDidLoad()
        EmailLbl.becomeFirstResponder()
        //EmailLbl.text = "Email: \(email)"
        //passwordLbl.text = "Password: \(password)"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func FirstTapbtnn(_ sender: Any) {
        guard let del = delegates else {
            return
        }
        del.datapass(a: "Welcome to MSIL ")
        self.navigationController?.popViewController(animated: true)
        
    }
    @IBOutlet weak var EmailLbl: UILabel!
    
    
    @IBOutlet weak var passwordLbl: UILabel!
    
    
    
}


