//
//  BindingView.swift
//  SwiftUI-Implement
//
//  Created by Ricardo Rodriguez on 10/17/23.
//

import SwiftUI

struct BindingView: View {
    
    @Binding var value: Int
    @ObservedObject var user: UserData
    @State private var selection: Int?
    
    var body: some View {
        VStack {
            Text("El valor es \(value)")
                .font(.largeTitle)
                .padding()
            Button("Suma 2") {
                value += 2
            }.padding()
            Button("Actualizar datos") {
                user.name = "Karen"
                user.age = 30
            }.padding()
            NavigationLink(destination: EnviromentView(), tag: 1, selection: $selection) {
                Button("Ir a EnviromentView") {
                    selection = 1
                }
            }
        }
    }
}

#Preview {
    BindingView(value: .constant(5), user: UserData())
}
