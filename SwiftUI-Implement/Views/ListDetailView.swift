//
//  ListDetailView.swift
//  SwiftUI-Implement
//
//  Created by Ricardo Rodriguez on 10/17/23.
//

import SwiftUI

struct ListDetailView: View {
    
    var programmer: Programmer
    
    var body: some View {
        VStack {
            programmer.avatar
                .resizable()
                .padding(40)
                .frame(width: 200, height: 200)
                .background(.orange)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.green, lineWidth: 4))
                .shadow(color: .gray, radius: 5)
            Text(programmer.name)
                .font(.largeTitle)
            Text(String(programmer.id))
                .font(.headline)
            Text(programmer.lenguaje)
                .font(.title)
            
            Spacer()
        }
    }
}

#Preview {
    ListDetailView(programmer: Programmer(id: 1, name: "Ricardo", lenguaje: "Swift, TCIB, T24, Java, .Net, JavaScript", avatar: Image(systemName: "person.fill")))
}
