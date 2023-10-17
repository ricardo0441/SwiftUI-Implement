//
//  ListView.swift
//  SwiftUI-Implement
//
//  Created by Ricardo Rodriguez on 10/16/23.
//

import SwiftUI

private let programmer = [
                        Programmer(id: 1, name: "Ricardo", lenguaje: "Swift, TCIB, T24, Java, .Net, JavaScript", avatar: Image(systemName: "person")),
                          Programmer(id: 2, name: "Pedro", lenguaje: "Java, T24, TCIB, .Net", avatar: Image(systemName: "person.fill")),
                          Programmer(id: 3, name: "Isaias", lenguaje: "SpringBoot, Java, .Net, C++", avatar: Image(systemName: "person.fill")),
                          Programmer(id: 4, name: "Elmer", lenguaje: "T24, TCIB, Java, .Net, C++", avatar: Image(systemName: "person.fill")),
                          Programmer(id: 5, name: "RM", lenguaje: "SpringBoot, TCIB, Java", avatar: Image(systemName: "person.fill"))]

struct ListView: View {
    var body: some View {
        NavigationView {
            List(programmer, id: \.id) { programmer in
                
                NavigationLink(destination: ListDetailView(programmer: programmer)) {
                        RowView(programmer: programmer)
                }
            }
            .navigationTitle("Programmers")
        }
    }
}

#Preview {
    ListView()
}
