//
//  BeginnerLevel.swift
//  DrivingHelper
//
//  Created by Brian Son on 12/30/22.
//

import SwiftUI

struct BeginnerLevel: View {
    @State private var action: Int? = 0
    @State private var showDrivingRules = false
    @State private var showTipsPermit = false
    let drivingRules = [
            "1. Always wear a seatbelt.",
            "2. Follow the speed limit.",
            "3. Don't drink and drive.",
            "4. Use turn signals when changing lanes or turning.",
            "5. Don't use your phone while driving.",
            "6. Keep a safe following distance.",
            "7. Obey traffic signals and signs.",
            "8. Never drive under the influence of drugs or alcohol.",
            "9. Always drive defensively.",
            "10. Always check your mirrors before changing lanes or turning."
    ]
    let tipsPermit = [
        "1. Study the manual: It's important to study the manual provided by your state's Department of Motor Vehicles (DMV) or other licensing agency. The manual covers all of the rules and regulations you need to know to pass the test.",
        "2. Practice, practice, practice: Practice makes perfect, and the more you practice, the better prepared you'll be for the test. There are many online resources and practice tests available to help you prepare.",
        "3. Pay attention to road signs: Road signs are an important part of the test, so it's important to pay attention to them and know what they mean.",
        "4. Know the rules of the road: It's important to understand the rules of the road, including speed limits, right-of-way, and passing rules.",
        "5. Know how to handle emergencies: Knowing how to handle emergencies, such as a flat tire or an accident, can be important on the test and in real life.",
        "6. Know how to parallel park: Parallel parking is often part of the permit test, so it's important to practice this skill before taking the test.",
        "7. Pay attention to your surroundings: It's important to always pay attention to your surroundings while driving, including other vehicles, pedestrians, and road conditions.",
        "8. Know your vehicle: It's important to know how to operate your vehicle safely, including how to use the brakes, turn signals, and headlights.",
        "9. Don't be nervous: It's natural to feel nervous before taking the permit test, but try to stay calm and focus on what you've learned.",
        "10. Get plenty of rest: Make sure you get plenty of rest the night before the test so that you're well rested and ready to focus on the task at hand."
    ]
    var body: some View {
        NavigationView {
            VStack(spacing: 50) {
                
                HStack {
                    Spacer()
                    Text("Beginner Level")
                        .fontWeight(.bold)
                        .font(.system(.title, design: .serif))
                    Spacer()
                }
                
                Divider()
                
                NavigationLink(destination: ContentView().navigationBarBackButtonHidden(), tag: 1, selection: $action) {
                    EmptyView()
                }
                    .opacity(0)
                
                
                Button(action: {
                    self.showDrivingRules = true
                }) {
                    Text("Driving Rules")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.black)
                        .cornerRadius(5)
                }
                .frame(width: 200, height: 44)
                .sheet(isPresented: $showDrivingRules) {
                    ScrollView {
                        ForEach(drivingRules, id: \.self) { rule in
                            Text(rule)
                                .font(.body)
                                .padding(.vertical, 5)
                        }
                    }
                }
                Button(action: {
                    self.showTipsPermit = true
                }) {
                    Text("Tips for Permit")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.black)
                        .cornerRadius(5)
                }
                .frame(width: 200, height: 44)
                .sheet(isPresented: $showTipsPermit) {
                    ScrollView {
                        ForEach(tipsPermit, id: \.self) { rule in
                            Text(rule)
                                .font(.body)
                                .padding(.vertical, 5)
                        }
                    }
                }
                Button(action: {
                    //placeholder
                }) {
                    Text("Go for a Drive!")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.black)
                        .cornerRadius(5)
                }
                .frame(width: 200, height: 44)
                
            }

            .navigationBarItems(leading: Button(action: {
                self.action = 1
                self.showDrivingRules = false
                self.showTipsPermit = false
            }) {
                Text("Back")
            })
        }
        //.navigationBarTitle("Beginner Level")
        
        
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
