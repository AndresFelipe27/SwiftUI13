//
//  ContentView.swift
//  02-images
//
//  Created by Felipe18 on 16/10/20.
//  Copyright © 2020 Felipe18. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        /*Image(systemName: "flame")
            .font(.system(size: 80))
            .foregroundColor(.orange)
            .shadow(color: .gray, radius: 5, x: 0, y: 5)
        */
        
        Image("image")
            .resizable()
            //.edgesIgnoringSafeArea(.all)
            //.scaledToFit()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300)
            //.clipped()
            //.clipShape(Circle())
            //.clipShape(Ellipse())
            .clipShape(Capsule())
            .opacity(0.9)
            .shadow(color: .gray, radius: 8, x: 0, y: 5)
            .overlay(
                /*Image(systemName: "heart.fill")
                    .font(.system(size: 60))
                    .foregroundColor(.pink)
                    .opacity(0.5)*/
                /*Text("The best is yet to come!, Trust because you are willing to accept the risk, not because it's safe or certain.")
                    .fontWeight(.bold)
                    .font(.system(.headline, design: .rounded))
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.gray)
                    .cornerRadius(10)
                    .opacity(0.7)
                    .padding(), alignment: .bottom*/
                    Capsule()
                        .foregroundColor(.gray)
                        .opacity(0.5)
                        .overlay(
                            Text("Un overley dentro de otro overley!")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                                .frame(width: 250)
                        )
            )
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
