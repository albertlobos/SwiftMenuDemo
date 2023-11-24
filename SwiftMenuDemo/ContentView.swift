//
//  ContentView.swift
//  SwiftMenuDemo
//
//  Created by Albert Villalobos on 11/23/23.
//

import SwiftUI

struct ContentView: View {
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    var body: some View {
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            Text("Hello, world!")
//        }
//        .padding()
        NavigationStack{
            List{
                ForEach(menu) { section in
                    Section(section.name){
                        ForEach(section.items){ item in
                            itemRow(item : item);
                        }
                    }
                }
            }
            .navigationTitle("Menu")
            .listStyle(GroupedListStyle());
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
