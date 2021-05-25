//
//  MonthPicker.swift
//  DaysBetween
//
//  Created by Ronald Joubert on 5/24/21.
//

import SwiftUI

struct MonthPicker: View {
    
    var monthsArray = ["JAN", "FEB", "MAR", "APR", "MAY", "JUN", "JUL", "AUG", "SEP", "OCT", "NOV", "DEC"]
    var dayArray:[Int] = []
    
    @State private var selectedStartMonth = "JAN"
    @State private var selectedStartDay = 1
    
    @State private var selectedEndMonth = "JAN"
    @State private var selectedEndDay = 1
    
    var body: some View {
        
        VStack {
            Text("Choose a date to start")
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
            Text("You selected: \(selectedStartMonth) \(selectedStartDay)")
            
            Text("Choose a date to end")
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
            Text("You selected: \(selectedEndMonth) \(selectedEndDay)")
        }
        
        
    }
    
    
    
}

struct MonthPicker_Previews: PreviewProvider {
    static var previews: some View {
        MonthPicker()
    }
}
