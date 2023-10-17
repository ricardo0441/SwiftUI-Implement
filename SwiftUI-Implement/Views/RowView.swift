//
//  RowView.swift
//  SwiftUI-Implement
//
//  Created by Ricardo Rodriguez on 10/16/23.
//

import SwiftUI

struct RowView: View {
    
    var programmer: Programmer
    
    var body: some View {
        HStack {
            programmer.avatar
                .resizable()
                .frame(width: 40, height: 40)
                .padding()
            VStack(alignment: .leading) {
                Text(programmer.name)
                    .font(.title)
                Text(programmer.lenguaje)
                    .font(.subheadline)
            }
            Spacer()
            if programmer.favorite {
                Image(systemName: "star.fill").foregroundColor(.yellow)
            }
        }
    }
}

#Preview {
    RowView(programmer: Programmer(id: 1, name: "Ricardo", lenguaje: "Swift, Java", avatar: Image(systemName: "person.fill"), favorite: true))
        .previewLayout(.fixed(width: 400, height: 600))
}
