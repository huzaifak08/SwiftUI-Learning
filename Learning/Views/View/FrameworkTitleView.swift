//
//  FrameworkTitleView.swift
//  Learning
//
//  Created by Huzaifa Khan  on 22/08/2024.
//

import SwiftUI

struct FrameworkTitleView: View{
    
    let framework: Framework
    
    var body: some View{
        
        HStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 70,height: 70)
            
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
                .padding()
        }
    }
}

#Preview {
    FrameworkTitleView(framework: MockData.sampleFramework)
}
