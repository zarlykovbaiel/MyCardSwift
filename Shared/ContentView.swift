//
//  ContentView.swift
//  Shared
//
//  Created by Байел Зарлыков on 27/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack { Color(red: 0.16, green: 0.50, blue: 0.73).ignoresSafeArea()
            VStack {Image("ava").resizable().aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/).frame(width: 200, height: 200).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).overlay(Circle().stroke(lineWidth: 5))
                Text("Baiel Zarlykov")
                    .font(.title)
                    .fontWeight(.heavy)
                Text("Web / iOS Developer")
                    .font(.headline)
                    .fontWeight(.regular)
                Divider()
                Card(image: "phone.fill", message: "+996702201131")
                Card(image: "envelope.fill", message: "zarlykovbaiel@gmai.com")
            }.foregroundColor(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portrait)
    }
}

struct Card: View {
    let image: String
    let message: String
    var body: some View {
        RoundedRectangle(cornerRadius: 25).padding(.horizontal).frame(height: 50).overlay(HStack {
            Image(systemName: image)
            Text(message)
                .fontWeight(.semibold)
                .foregroundColor(Color.black)
        }.foregroundColor(Color(red: 0.10, green: 0.74, blue: 0.61)))
    }
}
