//
//  checkoutView.swift
//  SwiftMenuDemo
//
//  Created by Albert Villalobos on 12/2/23.
//

import SwiftUI

struct checkoutView: View {
    @EnvironmentObject var order: Order;
    @State private var paymentType = "Credit Card";
    @State private var addLoyaltyDetails = false;
    @State private var loyaltyNumber = "";
    @State private var tipAmount =  10;
    
    let paymentMethods = ["Cash", "Credit Card", "Dine Points"];
    let tipAmounts = [10, 15, 20, 25, 0];

    var body: some View {
        Form{
            Section{
                Picker("How do you want to pay?", selection: $paymentType) {
                    ForEach(paymentMethods, id: \.self){
                        Text($0);
                    }
                }
                
                Toggle("Add Dine Loyalt Card", isOn: $addLoyaltyDetails.animation());
                
                if(addLoyaltyDetails){
                    TextField("Enter you Dine Loyalty Number", text: $loyaltyNumber);
                }
            }
            
            Section("Add a Tip?"){
                Picker("Percentage", selection: $tipAmount) {
                    ForEach(tipAmounts, id: \.self){
                        Text("\($0)%");
                    }
                }
                .pickerStyle(.segmented)
            }
            
            Section("Total: $100"){
                Button("Confirm Order") {
                    print("Hello");
                }
            }
        }
        .navigationTitle("Payment")
        .navigationBarTitleDisplayMode(.inline)
        
        
    }
}

struct checkoutView_Previews: PreviewProvider {
    static var previews: some View {
        checkoutView().environmentObject(Order());
    }
}
