//
//  PriceOfferLandingViewController.swift
//  PriceOffer
//
//  Created by Cem Ege on 20.10.2024.
//

import UIKit
import SwiftUI

class PriceOfferLandingViewController: UIHostingController<PriceOfferLandingView> {

    var contentView: PriceOfferLandingView
    var viewModel: PriceOfferLandingViewModel

    // MARK: - init
    required init(contentView: PriceOfferLandingView, viewModel: PriceOfferLandingViewModel) {
        self.contentView = contentView
        self.viewModel = viewModel
        
        super.init(rootView: contentView)
    }
    
    required dynamic init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
