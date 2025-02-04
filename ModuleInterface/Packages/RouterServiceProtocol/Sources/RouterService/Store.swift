//
//  Store.swift
//  RouterServiceProtocol
//
//  Created by Cem Ege on 20.10.2024.
//

import Foundation

public typealias DependencyFactory = () -> AnyObject

public protocol StoreProtocol {
    func get<T>(_ arg: T.Type) -> T?
    func register<T>(_ arg: @escaping DependencyFactory, forMetaType metaType: T.Type)
}

final class Store: StoreProtocol {
    var dependencies = NSMapTable<NSString, AnyObject>(
        keyOptions: .strongMemory,
        valueOptions: .weakMemory
    )
    
    var dependencyCreators = [String: DependencyFactory]()
    
    func get<T>(_ arg: T.Type) -> T? {
        let name = String(describing: arg)
        let object = dependencies.object(forKey: name as NSString)
        if object == nil {
            guard let factory: DependencyFactory = dependencyCreators[name] else {
                return nil
            }
            let newInstance: AnyObject = factory()
            dependencies.setObject(newInstance, forKey: name as NSString)
            return newInstance as? T
        } else {
            return object as? T
        }
    }
    
    func register<T>(_ arg: @escaping DependencyFactory, forMetaType metaType: T.Type) {
        let name = String(describing: metaType)
        dependencyCreators[name] = arg
    }
}
