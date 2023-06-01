//
//  SettingsStack.swift
//  DeepLinkApp
//
//  Created by Vadim Shinkarenko on 30.05.2023.
//

import SwiftUI

/// Settings View Nav Stack
enum SettingsStack: String, CaseIterable {
    
    case myProfile = "My Profile"
    case dataUsage = "Data Usage"
    case privacyPolicy = "Privacy Policy"
    case termsOfService = "Terms Of Service"
    
    static func convert(from: String) -> Self? {
        return self.allCases.first { tab in
            tab.rawValue.lowercased() == from.lowercased()
        }
    }
}
