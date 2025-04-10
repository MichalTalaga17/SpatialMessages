//
//  ContentView.swift
//  SpatialMessages
//
//  Created by Michał Talaga on 09/04/2025.
//

import SwiftUI
import SwiftData

struct ContentView: View {

    var body: some View {
        ZStack {
            Image("Background")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            MessagesView()
        }
        .background(
            Image("Background")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            )
    }
}

#Preview {
    ContentView()
}
