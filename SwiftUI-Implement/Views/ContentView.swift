//
//  ContentView.swift
//  SwiftUI-Implement
//
//  Created by Ricardo Rodriguez on 10/16/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Image(systemName: "laptopcomputer")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Bienvenidos al curso de swift!")
                .font(.largeTitle)
                .foregroundColor(.blue)
                .background(Color.gray)
            
            Spacer()
            
            ZStack {
                Text("")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(.gray)
                    .padding()
                Text("")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(.green)
                    .padding(40)
                Text("")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(.red)
                    .padding(60)
                Text("")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(.blue)
                    .padding(80)
            }
            
            Spacer()
            
            HStack {
                
                Text("Hola following")
                    .padding()
                    .background(Color.gray)
                
                Spacer()
                
                Text("Bien venidos al curso de swift")
                    .padding()
                    .background(Color.gray)
            }
            
            Text("6")
            Text("7")
            Text("8")
            Text("9")
            Text("10")
            Text("11")
            Text("12")
            Text("13")
            Text("14")
            Text("15")
            Text("16")
            Text("17")
            
        }
        .background(Color.yellow)
        .padding(.bottom)
        .padding(.top)
    }
}

#Preview {
    ContentView()
}
