//
//  ModalSheetView.swift
//  SecondSwiftUIBootcamp
//
//  Created by Janani on 5/6/24.
//

import SwiftUI

struct ModalSheetView: View {
    @Binding var isShowing : Bool
    @ObservedObject var user : User
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("Lucky Number :")
                    Text("\(user.luckyNumber)")
                        .padding()
                        .background(Color.green)
                }
                Button("New number") {
                    user.luckyNumber = Int.random(in: 0...10)
                }
            }
            .navigationBarTitle(user.name, displayMode: .inline)
            .navigationBarItems(trailing: Button("Dismiss") {
                isShowing = false
            })
        }
        
    }
}

struct ModalSheetView_Previews: PreviewProvider {
    static var previews: some View {
        ModalSheetView(isShowing: .constant(false), user: User(name: "Jan", luckyNumber: 4))
    }
}
