//
//  ContentView.swift
//  Shopping List
//
//  Created by ramil on 29.09.2020.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showAddShoppingItemView = false
    
    var body: some View {
        NavigationView {
            List {
                ShoppingCell()
            }
            .navigationTitle("Shopping List")
            .navigationBarItems(
                trailing: Button(
                    action: {
                        showAddShoppingItemView.toggle()
            }, label: {
                Text("Save")
            }))
            .sheet(isPresented: $showAddShoppingItemView, content: {
                AddShoppingItemView(showAddShoppingItemView: $showAddShoppingItemView)
            })
        }
    }
}

struct ShoppingCell: View {
    @State private var isSelected = false
    
    var body: some View {
        HStack {
            Button(action: {
                isSelected.toggle()
            }, label: {
                Image(systemName: isSelected ? "largecircle.fill.circle" : "circle")
            })
            .buttonStyle(PlainButtonStyle())
            
            Text("Bananen")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ShoppingCell()
            .previewLayout(.sizeThatFits)
    }
}
