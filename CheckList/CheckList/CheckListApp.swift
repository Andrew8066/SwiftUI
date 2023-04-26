//
//  CheckListApp.swift
//
//  Created by Andrew C. Adkins on 4/10/23.
//

import SwiftUI

@main
struct CheckListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
