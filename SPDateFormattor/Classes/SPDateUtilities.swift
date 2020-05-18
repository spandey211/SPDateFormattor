//
//  SPDateUtilities.swift
//  SPDateFormattor
//
//  Created by Saurabh Pandey on 18/05/20.
//

import Foundation

extension Date {
    
    public static func getDateComponent() -> (String, String ,String){
        
        let dateString = "2020-05-18"
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        guard let date = formatter.date(from: dateString) else {
            return ("" ,"" ,"")
        }

        formatter.dateFormat = "yyyy"
        let year = formatter.string(from: date)
        formatter.dateFormat = "MM"
        let month = formatter.string(from: date)
        formatter.dateFormat = "dd"
        let day = formatter.string(from: date)
        return (year, month, day)
    }
    
    public static func differenceBetweenDates() -> Int{
        
        
        let start = "2020-05-18"
        let end = "2020-05-19"

        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"

        guard let startDate = dateFormatter.date(from: start) else {
                  return 0
              }
        guard let endDate = dateFormatter.date(from: end) else {
                  return 0
              }

        let cal = NSCalendar.current
        let components = cal.compare(endDate, to: startDate, toGranularity: .day)
        return components.rawValue
    }
}
