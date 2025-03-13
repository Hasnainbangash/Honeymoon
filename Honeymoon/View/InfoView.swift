//
//  InfoView.swift
//  Honeymoon
//
//  Created by Elexoft on 13/03/2025.
//

import SwiftUI

struct InfoView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                HeaderComponent()
                
                Spacer(minLength: 10)
                
                Text("App Info")
                    .fontWeight(.black)
                    .modifier(TitleModifier())
                
                AppInfoView() //: HSTACK
                
                Text("Credits")
                    .fontWeight(.black)
                    .modifier(TitleModifier())
                
                HStack {
                    Text("Photos").foregroundColor(Color.gray)
                    Spacer()
                    Text("Unsplash")
                } //: HSTACK
                
                Spacer(minLength: 10)
                
                Button(action: {
                    // ACTION
                    print("A button was tapped.")
                }) {
                    Text("Continue".uppercased())
                        .modifier(ButtonModifier())
                }
            } //: VSTACK
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.top, 15)
            .padding(.bottom, 25)
            .padding(.horizontal, 25)
        } //: SCROLL
    }
}

// MARK: - PREVIEW

#Preview {
    InfoView()
}

struct AppInfoView: View {
    var body: some View {
        HStack {
            Text("Application").foregroundColor(Color.gray)
            Spacer()
            Text("Honeymoon")
        }
    }
}
