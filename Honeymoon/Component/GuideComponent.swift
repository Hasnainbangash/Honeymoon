//
//  GuideComponent.swift
//  Honeymoon
//
//  Created by Elexoft on 12/03/2025.
//

import SwiftUI

struct GuideComponent: View {
    // MARK: - PROPERTIES
    var title: String
    var subtitle: String
    var description: String
    var icon: String
    
    // MARK: - BODY
    
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            Image(systemName: icon)
                .font(.largeTitle)
                .foregroundColor(Color.pink)
            
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Text(title.uppercased())
                        .font(.title)
                        .fontWeight(.heavy)
                    
                    Spacer()
                    
                    Text(subtitle.uppercased())
                        .font(.footnote)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.pink)
                } //: HSTACK
                
                Divider().padding(.bottom, 4)
                
                Text(description)
                    .font(.footnote)
                    .foregroundColor(Color.secondary)
                    // It helps to render the text to use the dimensions. In this case we want to make sure that the height of the text will be expanded. Even if the current view is smaller than the dimension of this text
                    .fixedSize(horizontal: false, vertical: true)
            } //: VSTACK
        } //: HSTACK
    }
}

// MARK: - PREVIEW

#Preview(traits: .sizeThatFitsLayout) {
    GuideComponent(title: "Title", subtitle: "Swipe right", description: "This is a placeholder sentence. This is a placeholder sentence. This is a placeholder sentence.", icon: "heart.circle")
}
