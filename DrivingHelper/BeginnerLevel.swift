//
//  BeginnerLevel.swift
//  DrivingHelper
//
//  Created by Brian Son on 12/30/22.
//

import SwiftUI

struct BeginnerLevel: View {
    @State private var action: Int? = 0
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: ContentView().navigationBarBackButtonHidden(), tag: 1, selection: $action) {
                    EmptyView()
                }
                    .opacity(0)
                Text("Beginner Level")
                    .font(.largeTitle)
                    .bold()
                    .padding(.top)
            }

            .navigationBarItems(leading: Button(action: {
                self.action = 1
            }) {
                Text("Back")
        })
        }
    }
}

struct BeginnerLevel_Previews: PreviewProvider {
   static var previews: some View {
        BeginnerLevel()
    }
}



//struct LevelView: View {
//    let level: String
//
//    var body: some View {
//        VStack {
//            Text(level)
//                .font(.largeTitle)
//                .bold()
//        }
//        .navigationBarItems(leading: Button(action: {
//            // Navigate back to the start page
//        }) {
//            Text("Back")
//        })
//    }
//}
