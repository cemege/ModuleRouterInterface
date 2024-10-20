//
//  File.swift
//  Garage
//
//  Created by Cem Ege on 20.10.2024.
//

import Foundation

import UIKit
import RouterServiceProtocol
import GarageNavigationInterface

public final class GarageRouteHandler: RouteHandler {
    public var routes: [Route.Type] {
        return [GarageLandingRoute.self]
    }

    public func destination(forRoute route: Route, fromViewController viewController: UIViewController) -> Feature.Type {
        guard route is GarageLandingRoute else {
            preconditionFailure() // unexpected route sent to this handler
        }
        return GarageLandingFeature.self
    }
    
    public init() {}
}
