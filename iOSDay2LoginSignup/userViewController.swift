//
//  userViewController.swift
//  iOSDay2LoginSignup
//
//  Created by admin on 2019-06-28.
//  Copyright © 2019 Tarlochan5268. All rights reserved.
//

import UIKit

class userViewController: UIViewController {

    @IBOutlet weak var lblPassword: UILabel!
    @IBOutlet weak var lblEmail: UILabel!
    var emailId : String?
    var password : String?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.lblEmail.text = emailId
        self.lblPassword.text = password
        self.title = "User Details"
        // Do any additional setup after loading the view.
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
