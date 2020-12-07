//
//  ContentView.swift
//  SwiftUIButton
//
//  Created by Blaine Beltran on 12/7/20.
//  Copyright © 2020 Blaine Beltran. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            Button(action: {
                // What to perform when pressed
                print("Plus tapped")
            }) {
                Image(systemName: "plus")
            }
            .buttonStyle(CircularStyle())
            
            
            Spacer() // This spacer pushes the buttons to the buttom
            
            Button(action: {
                // What to perform when pressed
                print("Share tapped!")
            }) {
                HStack {
                    Image(systemName: "square.and.arrow.up")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    Text("Share")
                        .fontWeight(.semibold)
                        .font(.title)
                }
            }
            .buttonStyle(GradientBackgroundStyle())
            
            Button(action: {
                // What to perform when pressed
                print("Edit tapped!")
            }) {
                HStack {
                    Image(systemName: "square.and.pencil")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    Text("Edit")
                        .fontWeight(.semibold)
                        .font(.title)
                }
            }
            .buttonStyle(GradientBackgroundStyle())
            
            Button(action: {
                // What to perform when pressed
                print("Trash tapped!")
            }) {
                HStack {
                    Image(systemName: "trash")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    Text("Delete")
                        .fontWeight(.semibold)
                        .font(.title)
                }
            }
            .buttonStyle(GradientBackgroundStyle())
        }
    }
}

struct GradientBackgroundStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .foregroundColor(.white)
            .background(LinearGradient(gradient: Gradient(colors: [Color("DarkGreen"), Color("LightGreen")]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(40)
            .shadow(color: Color("DarkGreen"), radius: 20.0)
            .padding(.horizontal, 20)
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0) // Scale the button down when it is pressed. "1.0" is the original position of the button
    }
}

struct CircularStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .font(.largeTitle)
            .padding()
            .background(Color("LightGreen"))
            .foregroundColor(.white)
            .clipShape(Circle())
            .rotationEffect(configuration.isPressed ? Angle(degrees: 135) : Angle(degrees: 0))
            .shadow(color: Color("DarkGreen"), radius: 20.0)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
