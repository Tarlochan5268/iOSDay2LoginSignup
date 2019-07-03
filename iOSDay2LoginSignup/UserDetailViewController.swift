//
//  UserDetailViewController.swift
//  iOSDay2LoginSignup
//
//  Created by admin on 2019-07-03.
//  Copyright © 2019 Tarlochan5268. All rights reserved.
//

import UIKit

class UserDetailViewController: UIViewController {
    
    @IBOutlet weak var lblUserDetails: UILabel!
    @IBOutlet weak var txtfldStudentId: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func actionUserDetails(_ sender: Any)
    {
        lblUserDetails.backgroundColor = UIColor.black
        lblUserDetails.textColor = UIColor.white
        let studentId : String = self.txtfldStudentId.text!
        var studentObjGot : StudentDetails = StudentDetails()
        if let studentObjGot : StudentDetails = StudentDetails.getStudent(studentId: studentId)
        {
            self.lblUserDetails.text = "student Id : \(studentObjGot.studentId) \nfirstName : \(studentObjGot.firstName)\nlastName : \(studentObjGot.lastName)\ngender : \(studentObjGot.gender)\nbirthDate : \(studentObjGot.birthDate.getForamttedDate())"
        }
            else
        {
            self.lblUserDetails.text = " Sorry incorrect Student Id .. Please try again.."
        }
        
        
        
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
