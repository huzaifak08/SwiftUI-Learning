//
//  FrameworkGridViewModel.swift
//  Learning
//
//  Created by Huzaifa Khan  on 21/08/2024.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject{
    
    var selectedFramework: Framework? {
        didSet{
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView = false
    
}
