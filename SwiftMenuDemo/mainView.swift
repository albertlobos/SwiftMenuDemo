//
//  mainView.swift
//  SwiftMenuDemo
//
//  Created by Albert Villalobos on 11/23/23.
//

import SwiftUI

struct mainView: View {
    @EnvironmentObject var order:Order
    
    var body: some View {
        TabView{
            ContentView()
                .tabItem {
                    Label("Menu", systemImage: "list.dash");
                };
            
            orderView()
                .tabItem {
                    Label("Order", systemImage: "square.and.pencil");
                };
            
            checkoutView()
                .tabItem {
                    Label("Checkout", systemImage: "list.dash");
                };
        }
    }
}

struct mainView_Previews: PreviewProvider {
    static var previews: some View {
        mainView().environmentObject(Order());
    }
}
