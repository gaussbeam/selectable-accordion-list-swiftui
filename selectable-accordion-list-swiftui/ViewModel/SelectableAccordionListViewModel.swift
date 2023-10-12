//
//  SelectableAccordionListViewModel.swift
//  selectable-accordion-list-swiftui
//
//  Created by HANYU, Koji on 2023/10/12.
//

import SwiftUI

final class SelectableAccordionListViewModel: ObservableObject {

    @Published private(set) var accordionData: [Item] = [
        Item(name: "no children"),
        Item(name: "one child", children: [
            Item(name: "child 1")
        ]),
        Item(name: "two children", children: [
            Item(name: "child a"),
            Item(name: "child b")
        ])
    ]
    
    @Published private(set) var selected: Item?
    
    func set(selected new: Item) {
        guard !new.hasChild else { return }
        selected = new
    }
}
