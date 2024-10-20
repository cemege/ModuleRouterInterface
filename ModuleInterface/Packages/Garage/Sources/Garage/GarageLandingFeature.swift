//
//  GarageLandingFeature.swift
//  Garage
//
//  Created by Cem Ege on 20.10.2024.
//

import UIKit
import RouterServiceProtocol
import PriceOfferNavigationInterface

public struct GarageLandingFeature: Feature {
    
    @Dependency var routerService: RouterServiceProtocol
    
    public init() {}
    
    public func build(fromRoute: Route?) -> UIViewController {
        let viewModel = GarageLandingViewModel(routerService: routerService)
        return GarageLandingViewController(
            contentView: GarageLandingView(viewModel: viewModel),
            viewModel: viewModel
        )
    }
}
