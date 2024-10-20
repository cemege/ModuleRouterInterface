//
//  PriceOfferLandingView.swift
//  PriceOffer
//
//  Created by Cem Ege on 20.10.2024.
//

import SwiftUI
import RouterServiceProtocol

public struct PriceOfferLandingView: View {
    
    @ObservedObject public var viewModel: PriceOfferLandingViewModel
    
    public init(viewModel: PriceOfferLandingViewModel) {
        self.viewModel = viewModel
    }
    
    public var body: some View {
        Text("Hello, PriceOffer!")
    }
}

#Preview {
    PriceOfferLandingView(
        viewModel: PriceOfferLandingViewModel(
            routerService: RouterService()
        )
    )
}
