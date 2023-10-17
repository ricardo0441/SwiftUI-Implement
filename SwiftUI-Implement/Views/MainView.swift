//
//  MainView.swift
//  SwiftUI-Implement
//
//  Created by Ricardo Rodriguez on 10/16/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ScrollView {
            VStack {
                MapView()
                    .frame(height: 400)
                ImageView()
                    .offset(y: -150)
                Divider()
                    .padding()
                ContentView()
            }
        }
    }
}

#Preview {
    MainView()
}
