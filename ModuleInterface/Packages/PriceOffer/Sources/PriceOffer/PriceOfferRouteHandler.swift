//
//  PriceOfferRouteHandler.swift
//  PriceOffer
//
//  Created by Cem Ege on 20.10.2024.
//

import UIKit
import RouterServiceProtocol
import PriceOfferNavigationInterface

public final class PriceOfferRouteHandler: RouteHandler {
    public var routes: [Route.Type] {
        return [PriceOfferLandingRoute.self]
    }

    public func destination(forRoute route: Route, fromViewController viewController: UIViewController) -> Feature.Type {
        guard route is PriceOfferLandingRoute else {
            preconditionFailure() // unexpected route sent to this handler
        }
        
        return PriceOfferLandingFeature.self
    }
    
    public init() {}
}
