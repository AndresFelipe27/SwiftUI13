//
//  ContentView.swift
//  01-first_app
//
//  Created by Felipe18 on 29/09/20.
//  Copyright © 2020 Felipe18. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
            .fontWeight(.bold)
            .font(.system(size: 45, design: .rounded))
            .foregroundColor(.green)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
