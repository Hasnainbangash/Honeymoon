//
//  HeaderView.swift
//  Honeymoon
//
//  Created by Elexoft on 12/03/2025.
//

import SwiftUI

struct HeaderView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    
    var body: some View {
        HStack {
            Button(action: {
                // ACTION
                print("Information")
            }) {
                Image(systemName: "info.circle")
                    .font(.system(size: 24, weight: .regular))
            }
            .accentColor(Color.primary)
            
            Spacer()
            
            Image("logo-honeymoon-pink")
                .resizable()
                .scaledToFit()
                .frame(height: 28)
            
            Spacer()
            
            Button(action: {
                // ACTION
                print("Guide")
            }) {
                Image(systemName: "questionmark.circle")
                    .font(.system(size: 24, weight: .regular))
            }
            .accentColor(Color.primary)
        } //: HSTACK
        .padding()
    }
}

// MARK: - PREVIEW

#Preview(traits: .fixedLayout(width: 375, height: 80)) {
    HeaderView()
}
