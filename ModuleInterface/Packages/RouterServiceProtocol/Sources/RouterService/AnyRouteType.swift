//
//  AnyRouteType.swift
//  RouterServiceProtocol
//
//  Created by Cem Ege on 20.10.2024.
//

import Foundation

/// A type-erased container of the metaType of a `Route`.
public final class AnyRouteType {
    public let metaType: Any
    public let decode: (JSONDecoder, Data) throws -> Route

    public init<T: Route>(_ routeType: T.Type) {
        self.metaType = routeType
        decode = { decoder, data in
            try decoder.decode(T.self, from: data)
        }
    }
}
