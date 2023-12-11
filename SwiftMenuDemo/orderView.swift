//
//  OrderView.swift
//  SwiftMenuDemo
//
//  Created by Albert Villalobos on 11/23/23.
//

import SwiftUI

struct orderView: View {
    @EnvironmentObject var order: Order
    var body: some View {
        NavigationStack{
            List{
                Section{
                    ForEach(order.items) { item in
                        HStack{
                            Text(item.name);
                            Spacer();
                            Text("$\(item.price)");
                        }
                    }
                    .onDelete(perform: deleteItems);
                }
                
                Section{
                    NavigationLink("Place Order"){
                        checkoutView();
                    }
                }
                .disabled(order.items.isEmpty);
            }
            .navigationTitle("Order")
            .toolbar{
                EditButton();
            }
        }
    }
    
    func deleteItems(at offsets: IndexSet){
        order.items.remove(atOffsets: offsets);
    }
}

struct orderView_Previews: PreviewProvider {
    static var previews: some View {
        orderView().environmentObject(Order());
    }
}
