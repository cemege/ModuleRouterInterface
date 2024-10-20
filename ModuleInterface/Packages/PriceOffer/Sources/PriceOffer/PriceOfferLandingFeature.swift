//
//  PriceOfferLandingFeature.swift
//  PriceOffer
//
//  Created by Cem Ege on 20.10.2024.
//

import UIKit
import RouterServiceProtocol
import GarageNavigationInterface

public struct PriceOfferLandingFeature: Feature {
    
    @Dependency var routerService: RouterServiceProtocol
    
    public init() {}
    
    public func build(fromRoute: Route?) -> UIViewController {
        let viewModel = PriceOfferLandingViewModel(routerService: routerService)
        return PriceOfferLandingViewController(
            contentView: PriceOfferLandingView(viewModel: viewModel),
            viewModel: viewModel
        )
    }
}
