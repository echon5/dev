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
            //            Image("\(imageName)")
            //                .resizable()
            //                .frame(width: 60, height: 60, alignment: .center)
        }
    }
}


