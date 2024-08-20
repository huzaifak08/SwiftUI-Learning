//
//  FrameworkGridView.swift
//  Learning
//
//  Created by Huzaifa Khan  on 20/08/2024.
//

import SwiftUI

struct FrameworkGridView: View {
    
    let columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()),GridItem(.flexible())]
    
    var body: some View {
        NavigationView(content: {
            
            ScrollView(content: {
                
                LazyVGrid(columns: columns, content: {
                    
                    ForEach(MockData.frameworks ,content: { framework in
                        
                        FrameworkTitleView(framework: framework)
                        
                    })
                })
                
            })
            .navigationTitle(" Framework")
            
        })
        
    }
}

#Preview {
    FrameworkGridView().preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}

struct FrameworkTitleView: View{
    
    let framework: Framework
    
    var body: some View{
        
        VStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 90,height: 90)
            
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }
        .padding()
    }
}
