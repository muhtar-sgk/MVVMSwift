//
//  ContentView.swift
//  MVVMSwift
//
//  Created by Muhtar on 10/07/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ViewModel()
    
    var body: some View {
        VStack {
            Toggle("Toggle switch", isOn: $viewModel.isTurnedOn)
                .padding()
            
            HStack {
                Button("Increment") {
                    viewModel.increment()
                }
                Text("\(viewModel.counter)")
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
            }
            
            List(viewModel.itemList) { item in
                HStack {
                    Text(item.name)
                    Spacer()
                    Text(item.description)
                }
            }
            .listStyle(.plain)
            .background(.thinMaterial)
            
            Button("Add item") {
                viewModel.addItem()
            }
            .padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
