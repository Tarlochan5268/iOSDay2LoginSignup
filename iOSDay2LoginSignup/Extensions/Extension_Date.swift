//
//  Extension_Date.swift
//  iOSDay2LoginSignup
//
//  Created by admin on 2019-07-02.
//  Copyright © 2019 Tarlochan5268. All rights reserved.
//

import Foundation
extension Date
{
    public func getForamttedDate() -> String
    {
        var dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM-dd-yyyy"
        var formattedDate = dateFormatter.string(from: self)
        return formattedDate
    }
}
