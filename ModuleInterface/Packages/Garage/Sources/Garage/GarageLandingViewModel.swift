//
//  GarageLandingViewModel.swift
//  Garage
//
//  Created by Cem Ege on 20.10.2024.
//

import Foundation
import RouterServiceProtocol
import PriceOfferNavigationInterface

public final class GarageLandingViewModel: ObservableObject {
    
    let routerService: RouterServiceProtocol
    
    var navigateToGarage: (() -> Void)?
    
    public init(routerService: RouterServiceProtocol) {
        self.routerService = routerService
    }
}
