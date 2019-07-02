//
//  userViewController.swift
//  iOSDay2LoginSignup
//
//  Created by admin on 2019-06-28.
//  Copyright © 2019 Tarlochan5268. All rights reserved.
//

import UIKit

class userViewController: UIViewController {

    @IBOutlet weak var lblUserDetails: UILabel!
    @IBOutlet weak var txtfldStudentId: UITextField!
    @IBOutlet weak var txtfldFirstName: UITextField!
    @IBOutlet weak var txtfldLastName: UITextField!
    @IBOutlet weak var sgmtGender: UISegmentedControl!
    @IBOutlet weak var txtfldBirthDate: UITextField!
    @IBOutlet weak var lblPassword: UILabel!
    
    
    @IBOutlet weak var btnSubmit: UIButton!
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
    
    @IBAction func actionSubmit(_ sender: Any)
    {
        var studentId : String = self.txtfldStudentId.text!
        var firstName : String = self.txtfldFirstName.text!
        var lastName : String = self.txtfldLastName.text!
        var gender : String
        {
             if (self.sgmtGender.selectedSegmentIndex == 0)
             {
                return "Male"
            }
            else
             {
                return "Female"
            }
        }
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM-dd-yyyy"
        //yyyy-MM-dd HH:mm:ss
        
        //var formattedDate = dateFormatter.date(from: "Saturday, 21 June, 2019")
        //print(dateFormatter.string(from: formattedDate!))
        
        let birthDate : Date =
            dateFormatter.date(from: self.txtfldBirthDate.text!)!
        let studentObj : StudentDetails = StudentDetails(studentId: studentId, firstName: firstName, lastName: lastName, gender: gender, birthDate: birthDate)
        StudentDetails.addStudent(studentObj: studentObj)
        self.lblUserDetails.text = "Details stored. Now enter student id again and click on View Details Button to see your details"
        /*
        let studentObjGot = StudentDetails.getStudent(studentId: studentObj.studentId)
        self.lblUserDetails.text = "\(studentObjGot!.studentId)+\(studentObjGot!.firstName)+\(studentObjGot!.lastName)+\(studentObjGot!.gender)+\(studentObjGot!.birthDate.getForamttedDate())"
        */
    }
    
    @IBAction func actionViewDetails(_ sender: Any)
    {
        var studentId : String = self.txtfldStudentId.text!
        let studentObjGot = StudentDetails.getStudent(studentId: studentId)
        self.lblUserDetails.text = "student Id : \(studentObjGot!.studentId) \nfirstName : \(studentObjGot!.firstName)\nlastName : \(studentObjGot!.lastName)\ngender : \(studentObjGot!.gender)\nbirthDate : \(studentObjGot!.birthDate.getForamttedDate())"
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
