//
//  RouteHandler.swift
//  RouterServiceProtocol
//
//  Created by Cem Ege on 20.10.2024.
//

import UIKit

public protocol RouteHandler {
    var routes: [Route.Type] { get }

    func destination(
        forRoute route: Route,
        fromViewController viewController: UIViewController
    ) -> Feature.Type
}
