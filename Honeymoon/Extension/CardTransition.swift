//
//  CardTransition.swift
//  Honeymoon
//
//  Created by Elexoft on 14/03/2025.
//

import SwiftUI

extension AnyTransition {
    // The main reason to use the asymmetric transition because we only want to animate the cards transition when it's removed. So when a new card is inserted in the deck, there should be no animation what so ever.
    
    // The first trailing bottom transition is used when the card is thrown away to the right of the screen
    static var trailingBottom: AnyTransition {
        AnyTransition.asymmetric(
            insertion: .identity,
            removal: AnyTransition.move(edge: .trailing).combined(with: .move(edge: .bottom)))
    }
    
    // The second leading bottom transition is applied when the card is thrown away to the left
    static var leadingBottom: AnyTransition {
        AnyTransition.asymmetric(
            insertion: .identity,
            removal: AnyTransition.move(edge: .leading).combined(with: .move(edge: .bottom)))
    }
}
