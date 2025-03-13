//
//  TitleModifier.swift
//  Honeymoon
//
//  Created by Elexoft on 13/03/2025.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(Color.pink)
    }
}
