//
//  File.swift
//  PriceOffer
//
//  Created by Cem Ege on 20.10.2024.
//

import UIKit
import RouterServiceProtocol
import GarageNavigationInterface

public final class PriceOfferLandingViewModel: ObservableObject {
    
    let routerService: RouterServiceProtocol
    
    public init(routerService: RouterServiceProtocol) {
        self.routerService = routerService
    }
}
