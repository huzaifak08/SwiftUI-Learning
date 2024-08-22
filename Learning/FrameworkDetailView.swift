//
//  FrameworkDetailView.swift
//  Learning
//
//  Created by Huzaifa Khan  on 21/08/2024.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    let framework: Framework
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        VStack{
            
            HStack{
                Spacer()
                
                Button{
                    
                    isShowingDetailView = false
                    
                }label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label)) // label will act as white in dark mode and vice versa
                        .imageScale(.large)
                        .frame(width: 44,height: 44)
                    
                }
            }
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Link("Learn More", destination: URL(string: framework.urlString)!)
                .environment(\.openURL, OpenURLAction{
                    url in UIApplication.shared.open(url)
                    return .handled
                })
                .font(.title2)
                .frame(width: 280,height: 50)
                .background(Color.red)
                .foregroundColor(.white)
                .cornerRadius(10)
            
//            Button{
//                
//                print("Button Pressed");
//                
//            } label: {
//                AFButton(title: "Learn More")
//            }
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
}
