//
//  ListView.swift
//  SwiftUI-Implement
//
//  Created by Ricardo Rodriguez on 10/16/23.
//

import SwiftUI

final class ProgrammersModelData: ObservableObject {
    

@Published  var programmer = [
    Programmer(id: 0, name: "Ricardo", lenguaje: "Swift, TCIB, T24, Java, .Net, JavaScript", avatar: Image(systemName: "person"), favorite: true),
    Programmer(id: 1, name: "Pedro", lenguaje: "Java, T24, TCIB, .Net", avatar: Image(systemName: "person.fill"), favorite: false),
    Programmer(id: 2, name: "Isaias", lenguaje: "SpringBoot, Java, .Net, C++", avatar: Image(systemName: "person.fill"), favorite: false),
    Programmer(id: 3, name: "Elmer", lenguaje: "T24, TCIB, Java, .Net, C++", avatar: Image(systemName: "person.fill"), favorite: true),
    Programmer(id: 4, name: "RM", lenguaje: "SpringBoot, TCIB, Java", avatar: Image(systemName: "person.fill"), favorite: false)]
}


struct ListView: View {
    
    @EnvironmentObject var programmersModelData: ProgrammersModelData
    @State private var showFavorites = false
    
    private var filteredProgrammers: [Programmer] {
        return programmersModelData.programmer.filter { programmer in
            return !showFavorites || programmer.favorite
        }
    }
    
    var body: some View {
        NavigationView {
            VStack {
                Toggle(isOn: $showFavorites) {
                    Text("Mostrar Favoritos")
                } .padding()

                List(filteredProgrammers, id: \.id) { programmer in
                    NavigationLink(destination: ListDetailView(programmer: programmer, favorite: $programmersModelData.programmer[programmer.id].favorite)) {
                            RowView(programmer: programmer)
                    }
                }
            }.navigationTitle("Programmers")
        }
        
        
    }
}

#Preview {
    ListView().environmentObject(ProgrammersModelData())
}
