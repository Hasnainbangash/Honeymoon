//
//  HeaderView.swift
//  Honeymoon
//
//  Created by Elexoft on 12/03/2025.
//

import SwiftUI

struct HeaderView: View {
    // MARK: - PROPERTIES
    @Binding var showGuideView: Bool
    
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
                self.showGuideView.toggle()
            }) {
                Image(systemName: "questionmark.circle")
                    .font(.system(size: 24, weight: .regular))
            }
            .accentColor(Color.primary)
            .sheet(isPresented: $showGuideView) {
                GuideView()
            }
        } //: HSTACK
        .padding()
    }
}

// MARK: - PREVIEW

#Preview(traits: .fixedLayout(width: 375, height: 80)) {
    @State var showGuide: Bool = false
    HeaderView(showGuideView: $showGuide)
}
