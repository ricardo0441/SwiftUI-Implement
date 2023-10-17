//
//  StateView.swift
//  SwiftUI-Implement
//
//  Created by Ricardo Rodriguez on 10/17/23.
//

import SwiftUI

class UserData: ObservableObject {
    @Published var name = "Ricardo"
    @Published var age = 33
}

struct StateView: View {
    
    @State private var value = 0
    @State private var selection: Int?
    @StateObject private var user = UserData()
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Valor actual \(value)")
                    .font(.largeTitle)
                Button("Suma 1") {
                    value += 1
                }
                Text("Nombre: \(user.name) y Edad: \(user.age)")
                    .padding()
                Button("Actualizar Datos") {
                    user.name = "Ricardo Rodriguez"
                    user.age = 34
                }.padding()
                NavigationLink(destination: BindingView(value: $value, user: user), tag: 1, selection: $selection) {
                    Button("Ir a BindingView") {
                        selection = 1
                    }
                }
            }.navigationTitle("StateView")
        }
    }
}

#Preview {
    StateView().environmentObject(UserData())
}
