//
//  ContentView.swift
//  SwiftUI Example
//
//  Created by ousama boujaouane on 07/11/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            NavigationView {
                VStack {
                    NavigationLink(destination: DetailView()) {
                        Text("Go next view")
                    }
                }
            }.onAppear {
                print("ContentView appeared!")
            }.onDisappear {
                print("ContentView disappeared!")
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
