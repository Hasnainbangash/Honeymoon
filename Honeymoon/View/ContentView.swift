//
//  ContentView.swift
//  Honeymoon
//
//  Created by Elexoft on 12/03/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HeaderView()
            
            Spacer()
            
            CardView(honeymoon: honeymoonData[1])
                // FIXME: Add padding to the cards later on.
                .padding()
            
            Spacer()
        } //: VSTACK
    }
}

#Preview {
    ContentView()
}
