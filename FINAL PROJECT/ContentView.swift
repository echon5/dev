//
//  ContentView.swift
//  FINAL PROJECT
//
//  Created by Erin Chon on 11/15/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.green.opacity(0.3).ignoresSafeArea()
                VStack {
                  
                    Text("CHRISTMAS COUNTDOWN")
                        .fontWeight(.bold)
                        .foregroundColor(.red)
                        .font(Font.custom ("Arial Bold Italic", size: 24))
                        .padding()
                    Text("Tap the box corresdponding to the date")
                        .foregroundColor(.red)
                        .font(Font.custom ("Arial Bold", size: 17))
                        .padding()
                    
                    LazyVGrid(columns: Array(repeating: GridItem(.fixed(70), spacing: 0), count: 5), spacing: 25){
                        SquareDate(dayNumber: "1")
                        SquareDate(dayNumber: "2")
                        SquareDate(dayNumber: "3")
                        SquareDate(dayNumber: "4")
                        SquareDate(dayNumber: "5")
                    }
                    LazyVGrid(columns: Array(repeating: GridItem(.fixed(70), spacing: 0), count: 5), spacing: 25){
                        SquareDate(dayNumber: "6")
                        SquareDate(dayNumber: "7")
                        SquareDate(dayNumber: "8")
                        SquareDate(dayNumber: "9")
                        SquareDate(dayNumber: "10")
                    }
                    LazyVGrid(columns: Array(repeating: GridItem(.fixed(70), spacing: 0), count: 5), spacing: 25){
                        SquareDate(dayNumber: "11")
                        SquareDate(dayNumber: "12")
                        SquareDate(dayNumber: "13")
                        SquareDate(dayNumber: "14")
                        SquareDate(dayNumber: "15")
                    }
                    LazyVGrid(columns: Array(repeating: GridItem(.fixed(70), spacing: 0), count: 5), spacing: 25){
                        SquareDate(dayNumber: "16")
                        SquareDate(dayNumber: "17")
                        SquareDate(dayNumber: "18")
                        SquareDate(dayNumber: "19")
                        SquareDate(dayNumber: "20")
                    }
                    LazyVGrid(columns: Array(repeating: GridItem(.fixed(70), spacing: 0), count: 5), spacing: 25){
                        SquareDate(dayNumber: "21")
                        SquareDate(dayNumber: "22")
                        SquareDate(dayNumber: "23")
                        SquareDate(dayNumber: "24")
                        SquareDate(dayNumber: "25")
                    }
                                        
                                        
                                    }
                                }
                            }
                        }
                }
    


                    struct ContentView_Previews: PreviewProvider {
                        static var previews: some View {
                            ContentView()
                            
                        }
                    }
                
            
struct SquareDate : View {
    let dayNumber: String
    var body: some View {
        ZStack{
            Color.white
                .frame(width: 60, height: 60, alignment: .center)
                .cornerRadius (10)
            Text("\(dayNumber)")
                .font(Font.custom ("Arial ", size: 27))

        }
    }
}
