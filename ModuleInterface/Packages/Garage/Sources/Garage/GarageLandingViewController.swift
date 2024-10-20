//
//  GarageLandingViewController.swift
//  Garage
//
//  Created by Cem Ege on 20.10.2024.
//

import UIKit
import SwiftUI
import RouterServiceProtocol
import PriceOfferNavigationInterface

class GarageLandingViewController: UIHostingController<GarageLandingView> {

    var contentView: GarageLandingView
    var viewModel: GarageLandingViewModel

    // MARK: - init
    required init(contentView: GarageLandingView, viewModel: GarageLandingViewModel) {
        self.contentView = contentView
        self.viewModel = viewModel
        
        super.init(rootView: contentView)
    }
    
    required dynamic init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.navigateToGarage = { [weak self] in
            guard let self else { return }
            presentPriceOfferLanding()
        }
    }
    
    func presentPriceOfferLanding() {
        viewModel.routerService.navigate(
            toRoute: PriceOfferLandingRoute(),
            fromView: self,
            presentationStyle: Push(),
            animated: true
        )
    }
}
