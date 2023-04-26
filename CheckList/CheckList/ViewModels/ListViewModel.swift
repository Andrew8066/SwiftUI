//
//  ListViewModel.swift
//  CheckList
//
//  Created by Andrew C. Adkins on 4/10/23.
//

import Foundation

class ListViewModel: ObservableObject {
    @Published var items: [ItemModel] = []
    init() {
        getItems()
    }
    
    func getItems() {
        let newItems = [
            ItemModel(title: "Buy apples", isCompleted: false),
            ItemModel(title: "Pick up sibling from school", isCompleted: true),
            ItemModel(title: "Finish homework", isCompleted:  false),
        ]
        items.append(contentsOf: newItems)
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title: String) {
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    
    func updateItem(item: ItemModel) {
        if let index = items.firstIndex(where: { $0.id == item.id }) {
            items[index] = item.updateCompletion()
        }
    }
}
