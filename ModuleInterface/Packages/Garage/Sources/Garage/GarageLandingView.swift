//
//  GarageLandingView.swift
//  Garage
//
//  Created by Cem Ege on 20.10.2024.
//

import SwiftUI
import RouterServiceProtocol

public struct GarageLandingView: View {
    
    @ObservedObject public var viewModel: GarageLandingViewModel
    
    public init(viewModel: GarageLandingViewModel) {
        self.viewModel = viewModel
    }
    
    public var body: some View {
        Text("Hello, Garage!")
            .onTapGesture {
                viewModel.navigateToGarage?()
            }
    }
}

#Preview {
    GarageLandingView(viewModel: GarageLandingViewModel(routerService: RouterService()))
}
