//
//  ContentView.swift
//  CustomPopUp
//
//  Created by Snow Lukin on 03.06.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var showPopup = false
    
    var body: some View {
        NavigationView {
            Button("Show PopUp") {
                withAnimation {
                    showPopup.toggle()
                }
            }
            .navigationTitle("Custom PopUp")
        }
        .popupNavigationView(horizontalPadding: 40, show: $showPopup) {
            // Content
            List {
                ForEach(tasks) { task in
                    NavigationLink(task.title) {
                        Text(task.description)
                            .navigationTitle("Destination")
                    }
                }
            }
                .navigationTitle("PopUp")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button("Close") {
                            withAnimation {
                                showPopup.toggle()
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
