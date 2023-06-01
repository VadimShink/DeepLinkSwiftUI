//
//  AnyNavView.swift
//  DeepLinkApp
//
//  Created by Vadim Shinkarenko on 30.05.2023.
//

import SwiftUI

struct AnyNavView: View {
    var body: some View {
        
        ScrollView {
            
            VStack {
                
                Text("Ангелочек")
                
                Image(systemName: "heart")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.red)
            }
            .frame(width: 200, height: 200)
        }
    }
}

struct AnyNavView_Previews: PreviewProvider {
    static var previews: some View {
        AnyNavView()
    }
}
