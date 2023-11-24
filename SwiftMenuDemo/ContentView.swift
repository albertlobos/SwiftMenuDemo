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
        NavigationStack{
            List{
                ForEach(menu) { section in
                    Section(section.name){
                        ForEach(section.items){ item in
//                            NavigationLink {
//                                itemDetail(item: item);
//                            } label: {
//                                itemRow(item : item);
//                            }
                            
                            NavigationLink(value: item){
                                itemRow(item: item);
                            }
                        }
                    }
                }
            }
            .navigationTitle("Menu")
            .navigationDestination(for: MenuItem.self) {item in
                itemDetail(item: item);
            }
            .listStyle(GroupedListStyle());
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            Text("Hello, world!")
//        }
//        .padding()
