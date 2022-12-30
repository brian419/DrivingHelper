//
//  LevelView.swift
//  DrivingHelper
//
//  Created by Brian Son on 12/30/22.
//
import SwiftUI

struct IntermediateLevel: View {
    @State private var action: Int? = 0
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: ContentView().navigationBarBackButtonHidden(), tag: 1, selection: $action) {
                    EmptyView()
                }
                    .opacity(0)
                Text("Intermediate Level")
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


struct IntermediateLevel_Preview: PreviewProvider {
    static var previews: some View {
        IntermediateLevel()
    }
}
