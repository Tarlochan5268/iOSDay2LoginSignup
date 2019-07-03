//
//  DetailViewController.swift
//  iOSDay2LoginSignup
//
//  Created by admin on 2019-07-02.
//  Copyright © 2019 Tarlochan5268. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var lblUserDetails: UILabel!
    @IBOutlet weak var txtfldStudentId: UITextField!
    @IBAction func actionViewDetails(_ sender: Any)
    {
        var studentId : String = self.txtfldStudentId.text!
        let studentObjGot = StudentDetails.getStudent(studentId: studentId)
        self.lblUserDetails.text = "student Id : \(studentObjGot!.studentId) \nfirstName : \(studentObjGot!.firstName)\nlastName : \(studentObjGot!.lastName)\ngender : \(studentObjGot!.gender)\nbirthDate : \(studentObjGot!.birthDate.getForamttedDate())"
        
    }
    override func viewDidLoad(){
        super.viewDidLoad()

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
