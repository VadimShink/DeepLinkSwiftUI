//
//  FavouriteStack.swift
//  DeepLinkApp
//
//  Created by Vadim Shinkarenko on 30.05.2023.
//

import SwiftUI

/// Favourite View Nav Stack
enum FavouriteStack: String, CaseIterable {
    
    case vadim = "Vadim"
    case angelina = "Angelina"
    case demid = "Demid"
    
    static func convert(from: String) -> Self? {
        return self.allCases.first { tab in
            tab.rawValue.lowercased() == from.lowercased()
        }
    }
}
