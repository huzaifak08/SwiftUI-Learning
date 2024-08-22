//
//  XDismissButton.swift
//  Learning
//
//  Created by Huzaifa Khan  on 22/08/2024.
//

import SwiftUI

struct XDismissButton: View {
    
    @Binding var isShowingDetailView: Bool
    var body: some View {
        
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
    }
}

#Preview {
    XDismissButton(isShowingDetailView: .constant(false))
}
