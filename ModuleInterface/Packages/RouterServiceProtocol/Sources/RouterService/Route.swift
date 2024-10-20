//
//  Route.swift
//  RouterServiceProtocol
//
//  Created by Cem Ege on 20.10.2024.
//

public protocol Route: Decodable {
    static var identifier: String { get }
}

public extension Route {
    static var asAnyRouteType: AnyRouteType {
        return AnyRouteType(self)
    }
}
