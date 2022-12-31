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
                
                HStack {
                    Spacer()
                    Text("Driving Helper")
                        .fontWeight(.bold)
                        .font(.system(.title, design: .serif))
                        .font(.largeTitle)
                        
                    Spacer()
                }
                
                Divider()
                NavigationLink(destination: BeginnerLevel().navigationBarBackButtonHidden(), tag: "Beginner Level", selection: $action) {
                    EmptyView()
                }
                    .opacity(0)
                
                NavigationLink(destination: IntermediateLevel().navigationBarBackButtonHidden(), tag: "Intermediate Level", selection: $action) {
                    EmptyView()
                }
                    .opacity(0)
                
                Button("Beginner Level") {
                    self.action = "Beginner Level"
                }
                .font(.title)
                .foregroundColor(.white)
                .padding()
                .background(Color.black)
                .cornerRadius(10)
                .frame(width: 400, height: 44)
                
                Button("Intermediate Level") {
                    self.action = "Intermediate Level"
                }
                .font(.title)
                .foregroundColor(.white)
                .padding()
                .background(Color.black)
                .cornerRadius(10)
                .frame(width: 400, height: 44)
                
            }
        }
        
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

