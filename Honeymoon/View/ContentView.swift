//
//  ContentView.swift
//  Honeymoon
//
//  Created by Elexoft on 12/03/2025.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    
    var body: some View {
        VStack {
            HeaderView()
            
            Spacer()
            
            CardView(honeymoon: honeymoonData[2])
                // FIXME: Add padding to the cards later on.
                .padding()
            
            Spacer()
            
            FooterView()
        } //: VSTACK
    }
}

// MARK: - PREVIEW

#Preview {
    ContentView()
}
