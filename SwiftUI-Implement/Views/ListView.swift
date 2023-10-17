//
//  ListView.swift
//  SwiftUI-Implement
//
//  Created by Ricardo Rodriguez on 10/16/23.
//

import SwiftUI

private let programmer = [
    Programmer(id: 1, name: "Ricardo", lenguaje: "Swift, TCIB, T24, Java, .Net, JavaScript", avatar: Image(systemName: "person"), favorite: true),
    Programmer(id: 2, name: "Pedro", lenguaje: "Java, T24, TCIB, .Net", avatar: Image(systemName: "person.fill"), favorite: false),
    Programmer(id: 3, name: "Isaias", lenguaje: "SpringBoot, Java, .Net, C++", avatar: Image(systemName: "person.fill"), favorite: false),
    Programmer(id: 4, name: "Elmer", lenguaje: "T24, TCIB, Java, .Net, C++", avatar: Image(systemName: "person.fill"), favorite: true),
    Programmer(id: 5, name: "RM", lenguaje: "SpringBoot, TCIB, Java", avatar: Image(systemName: "person.fill"), favorite: false)]

struct ListView: View {
    
    @State private var showFavorites = false
    
    private var filteredProgrammers: [Programmer] {
        return programmer.filter { programmer in
            return !showFavorites || programmer.favorite
        }
    }
    
    var body: some View {
        
        VStack {
            Toggle(isOn: $showFavorites) {
                Text("Mostrar Favoritos")
            } .padding()
            
            NavigationView {
                List(filteredProgrammers, id: \.id) { programmer in
                    NavigationLink(destination: ListDetailView(programmer: programmer)) {
                            RowView(programmer: programmer)
                    }
                }
                .navigationTitle("Programmers")
            }
        }
        
        
    }
}

#Preview {
    ListView()
}
