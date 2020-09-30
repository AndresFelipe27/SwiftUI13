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
        Text("I had a great weekend. On Friday afternoon, I finished work at 5 PM. I went home and took a shower. Then I went to see a couple of my friends at a bar downtown. We had a couple of beers and a nice talk. Tom told us about his new job, and Jim told us about his new girlfriend. After a while, we went to a restaurant and had pizza. I went to bed late that night, but I was very happy. On Saturday morning I went running in the park. I ran 5 kilometers, and then came home. After that, I met my girlfriend for lunch. We went to a Thai restaurant near my house. I love Thai food!")
            .fontWeight(.regular)
            .font(.custom("Gill Sans", size: 25))
            //.font(.system(size: 45, design: .rounded))
            //.foregroundColor(Color(red: 1.0, green: 0.5, blue: 0.0, opacity: 1.0))
            .foregroundColor(.orange)
            .multilineTextAlignment(.center)
            //.lineLimit(3)
            .truncationMode(.tail)
            .lineSpacing(8)
            .padding()
            //.rotationEffect(.degrees(15),anchor: UnitPoint(x: 0, y: 0) )
            .rotation3DEffect(.degrees(50), axis: (1,0,0))
            .shadow(color: .gray, radius: 1, x: 0, y: 2)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
   
