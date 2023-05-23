//
//  ViewController.swift
//  DataPassing
//
//  Created by Siva Mouniker  on 19/04/23.
//

import UIKit

protocol FirstProtocol {
    func datapassingToSecondVc(data : String)
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var emailTxt: UITextField!
    
    @IBOutlet weak var passswordTxt: UITextField!
    
    var firstref : FirstProtocol? = nil
    
    
    @IBAction func btnnTapped(_ sender: Any) {

        let vc = self.storyboard?.instantiateViewController(withIdentifier: "DataPassingViewController") as! DataPassingViewController

        
        
        //vc.email = emailTxt.text!
        //vc.password  = passswordTxt.text!
        vc.delegates = self
        
        self.navigationController?.pushViewController(vc, animated: true)
        firstref?.datapassingToSecondVc(data: "I am 1st View Controller")
    }
    
    func datapassingByProtocol(vc : DataPassingViewController) {
        
    }
    
}


extension ViewController : Datamanager{
    func datapass(a: String)
    {
        emailTxt.text = a
    }
}
