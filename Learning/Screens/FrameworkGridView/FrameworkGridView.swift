//
//  FrameworkGridView.swift
//  Learning
//
//  Created by Huzaifa Khan  on 20/08/2024.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
        
    var body: some View {
        
        // NavigationView has been changed to NavigationStack and one more:
        NavigationStack{
            
            List(content: {
                
                ForEach(MockData.frameworks ,content: { framework in
                    NavigationLink(destination: FrameworkDetailView(framework: framework, isShowingDetailView: $viewModel.isShowingDetailView)){
                        FrameworkTitleView(framework: framework)
                    }
                })
            })
            .navigationTitle("Framework")
            
        }
        .accentColor(Color(.label))
        
    }
}

#Preview {
    FrameworkGridView().preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
