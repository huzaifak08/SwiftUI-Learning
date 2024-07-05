//
//  ContentView.swift
//  Learning
//
//  Created by Huzaifa Khan  on 05/07/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.white]), 
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack{
                Text("Cupertino, CA")
                    .font(.system(size: 32,weight: .medium,design: .default))
                    .foregroundColor(.white)
//                    .background(Color.red)
//                    .frame(width: 200,height: 200)
                    .padding(.bottom)
                
                Spacer() // Expand
                
            }
        }
    }
}

#Preview {
    ContentView()
}
