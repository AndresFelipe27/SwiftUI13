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
            
            HStack(spacing: 8) {
                PricingView(title: "Básico", price: "$9.99", subtitle: "Un curso incluido", textColor: .white, backgroundColor: .green)
                ZStack{
                    PricingView(title: "Carrera", price: "$29.99", subtitle: "Toda una carrera", textColor: .black, backgroundColor: Color(red: 230/255, green: 230/255, blue: 230/255))
                    
                    message(title: "El mejor para empezar")
                }
            }.padding(.horizontal)
            
            ZStack{
                PricingView(icon: "lightbulb", title: "Definitivo", price: "$99.99", subtitle: "Todos los cursos online", textColor: .white, backgroundColor: Color(red: 50/255, green: 50/255, blue: 50/255))
                .padding(.horizontal)
                
                message(title: "Conviertete en un máster del universo")
            }
            
                
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


struct PricingView: View {
    
    var icon: String?
    var title: String
    var price: String
    var subtitle: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        VStack{
            
            icon.map({
                Image(systemName: $0)
                    .font(.largeTitle)
                    .foregroundColor(.white)
            })

            Text(title)
                .font(.system(.title, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(textColor)
            
            Text(price)
                .font(.system(size: 35, weight: .heavy, design: .rounded))
                .foregroundColor(textColor)
            
            Text(subtitle)
                .font(.headline)
                .foregroundColor(textColor)
                .multilineTextAlignment(.center)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 115)
        .padding(30)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct message: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .font(.system(.caption, design: .rounded))
            .foregroundColor(.white)
            .fontWeight(.black)
            .padding(8)
            .background(Color(red: 240/255, green: 180/255, blue: 50/255))
            .offset(x:0, y: -89)
    }
}
