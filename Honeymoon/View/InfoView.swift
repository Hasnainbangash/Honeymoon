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
