//
//  Item.swift
//  selectable-accordion-list-swiftui
//
//  Created by HANYU, Koji on 2023/10/12.
//

struct Item: Hashable, Identifiable {
    var id: Self { self }
    var name: String
    var children: [Item]?
    
    var hasChild: Bool {
        !(children ?? []).isEmpty
    }
}
