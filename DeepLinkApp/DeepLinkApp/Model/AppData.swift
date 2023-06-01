//
//  AppData.swift
//  DeepLinkApp
//
//  Created by Vadim Shinkarenko on 30.05.2023.
//

import SwiftUI

/// App Data Observable Object
class AppData: ObservableObject {
    
    @Published var activeTab: Tab = .home
    
    @Published var homeNavStack: [HomeStack] = []
    @Published var favouriteNavStack: [FavouriteStack] = []
    @Published var settingNavStack: [SettingsStack] = []
}
