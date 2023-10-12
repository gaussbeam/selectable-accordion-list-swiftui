//
//  ContentView.swift
//  selectable-accordion-list-swiftui
//
//  Created by HANYU, Koji on 2023/10/12.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = SelectableAccordionListViewModel()
    
    var body: some View {
        List(viewModel.accordionData, children: \.children) { item in
            HStack {
                Text(item.name)
                item.hasChild ? nil : Spacer()
                isSelected(item) ? Image(systemName: "checkmark") : nil
            }.contentShape(Rectangle())
            .onTapGesture {
                viewModel.set(selected: item)
            }
        }
    }
    
    private func isSelected(_ item: Item) -> Bool {
        viewModel.selected == item
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
