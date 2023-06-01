//
//  HomeStack.swift
//  DeepLinkApp
//
//  Created by Vadim Shinkarenko on 30.05.2023.
//

import SwiftUI

/// Home View Nav Link's
enum HomeStack: String, CaseIterable {
    
    case myPosts = "My Posts"
    case oldPosts = "Old Posts"
    case latestPosts = "Latest Posts"
    case deletedPosts = "Deleted Posts"
    
    static func convert(from: String) -> Self? {
        return self.allCases.first { tab in
            tab.rawValue.lowercased() == from.lowercased()
        }
    }
}
