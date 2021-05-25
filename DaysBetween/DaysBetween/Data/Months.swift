//
//  Months.swift
//  DaysBetween
//
//  Created by Ronald Joubert on 5/24/21.
//

import Foundation

struct Months {
    var daysInMonth: [Int] = []
    var daysPassed: Int = 0
    
    let short:[Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20,21, 22, 23, 24, 25, 26, 27, 28]
    let leap:[Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20,21, 22, 23, 24, 25, 26, 27, 28, 29]
    let mid:[Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20,21, 22, 23, 24, 25, 26, 27, 28, 29, 30]
    let long:[Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20,21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]
    
    init (month: String, year: Int) {
        
        switch month {
        case "JAN":
            daysInMonth = long
            daysPassed = 0
        case "FEB":
            if year % 4 == 0 {
                daysInMonth = leap
                daysPassed = 31
            } else {
                daysInMonth = short
                daysPassed = 31
            }
        case "MAR":
            daysInMonth = long
            daysPassed = 59
        case "APR":
            daysInMonth = mid
            daysPassed = 90
        case "MAY":
            daysInMonth = long
            daysPassed = 120
        case "JUN":
            daysInMonth = mid
            daysPassed = 151
        case "JUL":
            daysInMonth = long
            daysPassed = 181
        case "AUG":
            daysInMonth = long
            daysPassed = 212
        case "SEP":
            daysInMonth = mid
            daysPassed = 243
        case "OCT":
            daysInMonth = long
            daysPassed = 273
        case "NOV":
            daysInMonth = mid
            daysPassed = 304
        case "DEC":
            daysInMonth = long
            daysPassed = 334
        default:
            return 
        }
    }
}


    
//struct Data {
//    func getData<T: Decodeable>(url: URL, completion: @escaping (Result<T, Error>) -> Void) {
//        
//    }
//    
//    
//}
      
   
