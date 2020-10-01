//
//  AddShoppingItemView.swift
//  Shopping List
//
//  Created by ramil on 01.10.2020.
//

import SwiftUI

struct AddShoppingItemView: View {
    
    @State private var shoppingItemTitle = ""
    @Binding var showAddShoppingItemView: Bool
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Shopping item", text: $shoppingItemTitle)
            }
            .navigationTitle("Add shopping item")
            .navigationBarItems(
                leading: Button(action: {
                    showAddShoppingItemView = false
                }, label: {
                    Text("Cancel")
                }),
                trailing: Button(action: {
                    showAddShoppingItemView = false
                }, label: {
                    Text("Save")
                }))
        }
    }
}

struct AddShoppingItemView_Previews: PreviewProvider {
    static var previews: some View {
        AddShoppingItemView(showAddShoppingItemView: .constant(false))
    }
}
