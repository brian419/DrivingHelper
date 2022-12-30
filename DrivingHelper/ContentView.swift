//
//  ContentView.swift
//  DrivingHelper
//
//  Created by Brian Son on 12/30/22.
//

import SwiftUI

struct ContentView: View {
    @State private var action: String? = nil

    var body: some View {
        NavigationView {
            VStack(spacing: 40) {
                NavigationLink(destination: BeginnerLevel().navigationBarBackButtonHidden(), tag: "Beginner Level", selection: $action) {
                    EmptyView()
                }
                    .opacity(0)
                Text("Driving Helper")
                    .font(.largeTitle)
                    .bold()

                Button("Beginner Level") {
                    self.action = "Beginner Level"
                }
                .font(.title)
                .foregroundColor(.white)
                .padding()
                .background(Color.gray)
                .cornerRadius(10)
                Button("Intermediate Level") {
                    self.action = "Intermediate Level"
                }
                .font(.title)
                .foregroundColor(.white)
                .padding()
                .background(Color.gray)
                .cornerRadius(10)
                
            }
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

