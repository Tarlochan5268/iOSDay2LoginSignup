//
//  ViewController.swift
//  iOSDay2LoginSignup
//
//  Created by admin on 2019-06-28.
//  Copyright © 2019 Tarlochan5268. All rights reserved.
//

import UIKit

class loginViewController: UIViewController {
    var userDict : [String:String] = ["tarlochan5268@gmail.com":"52685268",
                                      "kishore123@gmail.com":"kishore",
                                      "admin":"admin"]
    @IBOutlet weak var txtfldEmail: UITextField!
    @IBOutlet weak var txtfldPassword: UITextField!
    
    @IBOutlet weak var lblDisplay: UILabel!
    @IBOutlet weak var btnSignin: UIButton!
    
    @IBAction func clickSignin(_ sender: Any)
    {
        
        let email : String = txtfldEmail.text!
        let password : String = txtfldPassword.text!
        
        if let getPassword = userDict[email]
        {
            if getPassword == password
            {
                lblDisplay.text = "Logged in Correct Details"
                //let alertControl = UIAlertController(title: "Message", message: "Logged in Correct Details", preferredStyle: .actionSheet)
                
                //let actionOk = UIAlertAction(title: "Ok", style: .default, handler: nil)
                //let actionCancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
                //let actionDestructive = UIAlertAction(title: "Destructive", style: .destructive, handler: nil)
                
                //alertControl.addAction(actionOk)
                //alertControl.addAction(actionCancel)
                //alertControl.addAction(actionDestructive)
                
                //self .present(alertControl , animated: true , completion: nil)
                
                //STEP 1 //storyboard if of view controller
                //STEP 2 //refrence of storyboard
                let sb = UIStoryboard(name: "Main", bundle: nil)
                //step 3 get refrence of  controller using stroyboard id
                let userVC = sb.instantiateViewController(withIdentifier: "userVC") as! userViewController
                userVC.emailId = self.txtfldEmail.text
                userVC.password = self.txtfldPassword.text
                //self .present(userVC , animated: true , completion: nil)
                self.navigationController?.pushViewController(userVC, animated: true)
            }
            else
            {
                lblDisplay.text = "Wrong Password"
                //let alertControl = UIAlertController(title: " ALERT ", message: "Wrong Password", preferredStyle: .alert)
                
                
            }
        }
        else
        {
            lblDisplay.text = " User doesnt exist "
            let alertControl = UIAlertController(title: " ALERT ", message: " User doesnt exist ", preferredStyle: .alert)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Login"
        // Do any additional setup after loading the view.
    }


}

