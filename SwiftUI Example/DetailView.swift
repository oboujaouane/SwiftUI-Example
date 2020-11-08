//
//  DetailView.swift
//  SwiftUI Example
//
//  Created by ousama boujaouane on 08/11/2020.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        VStack {
            Text("Second View")
        }.onAppear {
                print("DetailView appeared!")
        }.onDisappear {
                print("DetailView disappeared!")
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
