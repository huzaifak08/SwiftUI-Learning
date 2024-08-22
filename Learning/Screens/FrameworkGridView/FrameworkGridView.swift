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
        NavigationView(content: {
            
            ScrollView(content: {
                
                LazyVGrid(columns: viewModel.columns, content: {
                    
                    ForEach(MockData.frameworks ,content: { framework in
                        
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                        
                    })
                })
                
            })
            .navigationTitle(" Framework")
            .sheet(isPresented: $viewModel.isShowingDetailView){
                FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework, isShowingDetailView: $viewModel.isShowingDetailView)
            }
            
        })
        
    }
}

#Preview {
    FrameworkGridView().preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
