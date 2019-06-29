//
//  StudentDetails.swift
//  iOSDay2LoginSignup
//
//  Created by admin on 2019-06-28.
//  Copyright © 2019 Tarlochan5268. All rights reserved.
//

import Foundation
class StudentDetails
{
    var studentId : String
    var firstName : String
    var lastName : String
    var gender : String
    var birthDate : Date
    static var userDict : [String : StudentDetails] = ["user":StudentDetails()]
    init()
    {
        self.studentId = ""
        self.firstName = ""
        self.lastName = ""
        self.gender = ""
        self.birthDate = Date()
    }
    init(studentId : String,firstName : String,lastName : String,gender : String,birthDate : Date)
    {
        self.studentId = studentId
        self.firstName = firstName
        self.lastName = lastName
        self.gender = gender
        self.birthDate = birthDate
    }
    static func addStudent(studentObj : StudentDetails)
    {
        self.userDict.updateValue(studentObj, forKey: studentObj.studentId)
    }
    
    static func getStudent(studentId : String) -> StudentDetails?
    {
        //let studentObj : StudentDetails =
        if let studentobj = self.userDict[studentId]
        {
            return studentobj
        }
        else
        {
            return nil
        }
    }
}
