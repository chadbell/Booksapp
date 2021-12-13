//
//  ContentView.swift
//  BookView
//
//  Created by cbell on 12/13/21.
//

import SwiftUI

struct ContentView: View {
    init() {
        Utils.loadModel() { (model, error) in
            print (model)
        }
    }
    
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
