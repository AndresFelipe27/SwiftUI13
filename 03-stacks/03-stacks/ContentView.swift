//
//  ContentView.swift
//  03-stacks
//
//  Created by Felipe18 on 18/10/20.
//  Copyright © 2020 Felipe18. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HeaderView()
            PlansView()
            
        }
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HeaderView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 4){
            Text("Elige tu itinerario")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.black)
                
            Text("de aprendizaje")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.black)
        }
    }
}

struct PlansView: View {
    var body: some View {
        HStack {
            VStack{
                Text("Plan Básico")
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                
                Text("$9.99")
                    .font(.system(size: 35, weight: .heavy, design: .rounded))
                    .foregroundColor(.white)
                
                Text("Un curso incluido")
                    .font(.headline)
                    .foregroundColor(.white)
            }
            .padding(30)
            .background(Color.green)
            .cornerRadius(10)
            
            VStack{
                Text("Plan Carrera")
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                
                Text("$29.99")
                    .font(.system(size: 35, weight: .heavy, design: .rounded))
                    .foregroundColor(.white)
                
                Text("Incluye 1 carrera")
                    .font(.headline)
                    .foregroundColor(.white)
            }
            .padding(30)
            .background(Color.orange)
            .cornerRadius(10)
        }
    }
}
