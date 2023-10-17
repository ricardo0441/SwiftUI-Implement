//
//  EnviromentView.swift
//  SwiftUI-Implement
//
//  Created by Ricardo Rodriguez on 10/17/23.
//

import SwiftUI

struct EnviromentView: View {
    
    @EnvironmentObject var user: UserData
//    @ObservedObject var user: UserData
    
    var body: some View {
        Text("Nombre: \(user.name)")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(Color.blue)
        Text("Edad: \(user.age)")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(Color.blue)
    }
}

#Preview {
    EnviromentView().environmentObject(UserData())
}
