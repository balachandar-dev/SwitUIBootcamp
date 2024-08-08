//
//  PropertyWrapperView.swift
//  SecondSwiftUIBootcamp
//
//  Created by Janani on 5/6/24.
//

import SwiftUI

struct PropertyWrapperView: View {
    @ObservedObject var user = User(name: "Rhythm", luckyNumber: 5)
    @State private var displayModel = false
    var body: some View {
        NavigationView {
            Group {
                HStack {
                    Button("New value") {
                        user.luckyNumber = Int.random(in: 1...10)
                    }
                    Text("\(user.luckyNumber)")
                        .background(Color.red)
                }
                Button(action: {
                    displayModel = true
                }, label: {
                    Text("Show Model")
                })
            }
            .sheet(isPresented: $displayModel, content: {
                ModalSheetView(isShowing: $displayModel, user: user)
            })
            .navigationTitle("Property Wrapper")
            .navigationBarItems(trailing: Button(action: {
                
            }, label: {
                Text("Next")
            }))
        }
    }
}

struct PropertyWrapperView_Previews: PreviewProvider {
    static var previews: some View {
        PropertyWrapperView()
    }
}
