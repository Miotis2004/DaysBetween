//
//  MonthPicker.swift
//  DaysBetween
//
//  Created by Ronald Joubert on 5/24/21.
//

import SwiftUI

struct MonthPicker: View {
    
    var monthsArray = ["JAN", "FEB", "MAR", "APR", "MAY", "JUN", "JUL", "AUG", "SEP", "OCT", "NOV", "DEC"]
    
    @State private var selectedStartMonth = "JAN"
    @State private var selectedStartDay = 1
    
    @State private var selectedEndMonth = "JAN"
    @State private var selectedEndDay = 1
    
    var body: some View {
        
        VStack {
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
                    let month: Months = Months(month: selectedStartMonth)
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
                    let month: Months = Months(month: selectedEndMonth)
                    ForEach(month.daysInMonth, id: \.self) {
                        Text(String($0))
                    }
                }
                
            }
            
            Divider()
            
            
            let startMonth: Months = Months(month: selectedStartMonth)
            let endMonth: Months = Months(month: selectedEndMonth)
            
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
