//
//  Home.swift
//  DeepLinkApp
//
//  Created by Vadim Shinkarenko on 30.05.2023.
//

import SwiftUI

struct Home: View {
    
    @EnvironmentObject private var appData: AppData
    
    var body: some View {
        
        TabView(selection: $appData.activeTab) {
            
            HomeView()
                .tag(Tab.home)
                .tabItem {
                    Image(systemName: Tab.home.symbolImage)
                }
            
            FavouriteView()
                .tag(Tab.favourite)
                .tabItem {
                    Image(systemName: Tab.favourite.symbolImage)
                }
            
            SettingView()
                .tag(Tab.settings)
                .tabItem {
                    Image(systemName: Tab.settings.symbolImage)
                }
        }
        .tint(.red)
    }
    
    /// Home View With Nav View's
    @ViewBuilder
    func HomeView() -> some View {
        NavigationStack(path: $appData.homeNavStack) {
            List {
                ForEach(HomeStack.allCases, id: \.rawValue) { link in
                    NavigationLink(value: link) {
                        Text(link.rawValue)
                    }
                }
            }
            .navigationTitle("Home")
            .navigationDestination(for: HomeStack.self) { link in
                /// USE SWITCH CASE TO SWITCH VIEW FOR EACH ENUM CASE
                ///  FOR VIDEO PURPOSE IM SIMPLY USING TEXT
                Text(link.rawValue + " View")
            }
        }
    }
    
    /// Favourite's View With Nav View's
    @ViewBuilder
    func FavouriteView() -> some View {
        NavigationStack(path: $appData.favouriteNavStack) {
            List {
                ForEach(FavouriteStack.allCases, id: \.rawValue) { link in
                    NavigationLink(value: link) {
                        Text(link.rawValue)
                        
//                        switch link {
//                            case .vadim:
//                                Text(link.rawValue + " View")
//
//                            case .angelina:
//                                Text("")
//
//                            case .demid:
//                                Text(link.rawValue + " View")
//                        }
                    }
                }
            }
            .navigationTitle("Favourite's")
            .navigationDestination(for: FavouriteStack.self) { link in
                /// USE SWITCH CASE TO SWITCH VIEW FOR EACH ENUM CASE
                ///  FOR VIDEO PURPOSE IM SIMPLY USING TEXT
//                Text(link.rawValue + " View")
                
                switch link {
                        
                    case .vadim:
                        Text(link.rawValue + " View")
                        
                    case .angelina:
//                        Text(link.rawValue + " View")
                        AnyNavView()
                        
                    case .demid:
                        Text(link.rawValue + " View")
                }
            }
        }
    }
    
    /// Settings View With Nav View's
    @ViewBuilder
    func SettingView() -> some View {
        NavigationStack(path: $appData.settingNavStack) {
            List {
                ForEach(SettingsStack.allCases, id: \.rawValue) { link in
                    NavigationLink(value: link) {
                        Text(link.rawValue)
                    }
                }
            }
            .navigationTitle("Setting")
            .navigationDestination(for: SettingsStack.self) { link in
                /// USE SWITCH CASE TO SWITCH VIEW FOR EACH ENUM CASE
                ///  FOR VIDEO PURPOSE IM SIMPLY USING TEXT
                Text(link.rawValue + " View")
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(AppData())
    }
}
