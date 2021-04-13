//
//  ContentView.swift
//  TabItemOverflowBug
//
//  Created by Ralf Ebert on 13.04.21.
//

import SwiftUI

struct ContentView: View {
    let title: String
    @ObservedObject var appModel = AppModel()
    
    var body: some View {
        NavigationView {
            Form {
                Text(title)
                Toggle("Show Moon", isOn: $appModel.showMoon)
            }
            .navigationBarTitle(title)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(title: "A")
    }
}
