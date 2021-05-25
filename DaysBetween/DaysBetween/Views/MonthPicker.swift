//
//  MonthPicker.swift
//  DaysBetween
//
//  Created by Ronald Joubert on 5/24/21.
//

import SwiftUI

struct MonthPicker: View {
    
    var monthsArray = ["JAN", "FEB", "MAR", "APR", "MAY", "JUN", "JUL", "AUG", "SEP", "OCT", "NOV", "DEC"]
    let years: [Int] = [2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010,
                        2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020,
                        2021, 2022, 2023, 2024, 2025, 2026, 2027, 2028, 2029, 2030,
                        2031, 2032, 2033, 2034, 2035, 2036, 2037, 2038, 2039, 2040]
    
    @State private var selectedStartMonth = "JAN"
    @State private var selectedStartDay = 1
    
    @State private var selectedEndMonth = "JAN"
    @State private var selectedEndDay = 1
    
    @State private var currentYear = 2021
    
    var body: some View {
        
        VStack {
            Picker("Select the year", selection: $currentYear) {
                ForEach(years, id: \.self) {
                    Text(String($0))
                }
            }
            Divider()
            Text("Choose a date to start")
                .bold()
                .foregroundColor(.green)
            HStack {
                Picker("Choose a month to start", selection: $selectedStartMonth) {
                    ForEach(monthsArray, id: \.self) {
                        Text($0)
                    }
                }
                
                Picker("Choose a day to start", selection: $selectedStartDay) {
                    let month: Months = Months(month: selectedStartMonth, year: currentYear)
                    ForEach(month.daysInMonth, id: \.self) {
                        Text(String($0))
                    }
                }
                
            }
            Divider()
            
            Text("Choose a date to end")
                .bold()
                .foregroundColor(.red)
            HStack {
                Picker("Choose a month to start", selection: $selectedEndMonth) {
                    ForEach(monthsArray, id: \.self) {
                        Text($0)
                    }
                }
                
                Picker("Choose a day to start", selection: $selectedEndDay) {
                    let month: Months = Months(month: selectedEndMonth, year: currentYear)
                    ForEach(month.daysInMonth, id: \.self) {
                        Text(String($0))
                    }
                }
                
            }
            
            Divider()
            
            
            let startMonth: Months = Months(month: selectedStartMonth, year: currentYear)
            let endMonth: Months = Months(month: selectedEndMonth, year: currentYear)
            
            let startingDay: Int = startMonth.daysPassed + selectedStartDay
            let endingDay: Int = endMonth.daysPassed + selectedEndDay
            
            let numDays: Int = abs(endingDay - startingDay)
            
            Text("There are \(numDays) days between these dates.")
                .font(.headline)
                .fontWeight(.bold)
        }
        
        
    }
    
    
    
}

struct MonthPicker_Previews: PreviewProvider {
    static var previews: some View {
        MonthPicker()
    }
}
