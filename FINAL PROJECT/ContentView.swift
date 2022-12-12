//
//  ContentView.swift
//  FINAL PROJECT
//
//  Created by Erin Chon on 11/15/22.
//

import SwiftUI
struct ContentView: View {
    @State private var flipped = Array(repeating: false, count: 25)
    @State private var imageName = ""
    @State private var snow = false
    @State private var changingText = "CLICK IMAGE"
    var body: some View {
        NavigationView {
            ZStack {
                Color.green.opacity(0.3).ignoresSafeArea()
                VStack {
                    Text(" 🎁 CHRISTMAS COUNTDOWN 🎅🏻")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .font(Font.custom ("Arial Bold Italic", size: 21))
                        .shadow(color: .red, radius: 2, x: 0, y: 5)
                        .padding()
                    Text("👉🏻Tap the box corresdponding to the date👈🏻")
                        .foregroundColor(.red)
                        .font(Font.custom ("Arial Bold", size: 16))
                        .shadow(color: .white, radius: 2, x: 0, y: 5)
                        .padding()
                    LazyVGrid(columns: Array(repeating: GridItem(.fixed(60), spacing: 5), count:5), spacing: 5) {
                        ForEach(0..<25) { index in
                            ZStack {
                                Color.white
                                    .frame(width: 60, height: 60, alignment: .center)
                                    .cornerRadius (10)
                                Image("\(index + 1)")
                                    .resizable()
                                    .frame(width: 60, height: 60, alignment: .center)
                                    .opacity(flipped[index] ? 1 : 0)
                                Text("\(index + 1)")
                                    .font(Font.custom ("Arial ", size: 27))
                                    .opacity(flipped[index] ? 0 : 1)
                            }
                            .onTapGesture {
                                flipped[index].toggle()
                            }
                        }
                    }
                    .padding()
                    NavigationLink ("Travel to WinterWonderland on Christmas Day!") {
                        VStack{
                            Text(changingText)
                                .fontWeight(.bold)
                                .foregroundColor(.red)
                                .font(Font.custom ("Arial Bold", size: 21))
                                .padding()
                            Image("deer")
                                .resizable()
                                .frame(width: 500, height: 500, alignment: .center)
                                .aspectRatio(contentMode: .fill)
                                .padding()
                                .onTapGesture {
                                    changingText = "MERRY CHRISTMAS!!!"
                            }
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
        let imageName: String
        var body: some View {
            ZStack{
                Color.white
                    .frame(width: 60, height: 60, alignment: .center)
                    .cornerRadius (10)
                Text("\(dayNumber)")
                    .font(Font.custom ("Arial ", size: 27))
            }
            .onTapGesture {
            }
        }
    }
}

