//
//  itemDetail.swift
//  SwiftMenuDemo
//
//  Created by Albert Villalobos on 11/23/23.
//

import SwiftUI

struct itemDetail: View {
    @EnvironmentObject var order: Order
    let item:MenuItem
    
    var body: some View {
        VStack{
            ZStack(alignment: .bottomTrailing, content: {
                Image(item.mainImage)
                    .resizable()
                    .scaledToFit();
                Text("Photo: \(item.photoCredit)")
                    .padding(4)
                    .background(.black)
                    .font(.caption)
                    .foregroundStyle(.white)
                    .offset(x: -5, y: -5);
            });
            Text(item.description)
                .padding();
            Button("Add to Order") {
                order.add(item: item);
            }
            .buttonStyle(.borderedProminent);
            Spacer();
        }
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline);
    }
}

struct itemDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            itemDetail(item: MenuItem.example).environmentObject(Order());
        }
    }
}
