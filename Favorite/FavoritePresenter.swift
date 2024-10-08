//
//  FavoritePresenter.swift
//  BitcoinApp
//
//  Created OSX on 20/08/24.
//  Copyright © 2024 ___ORGANIZATIONNAME___. All rights reserved.
//
//  Template generated by Luis Angel FR
//

import UIKit

class FavoritePresenter {
    //MARK: - Protocol Properties
    weak private var view: FavoriteViewProtocol?
    var interactor: FavoriteInteractorProtocol?
    private let router: FavoriteWireframeProtocol

    //MARK: - Life Cycle
    init(interface: FavoriteViewProtocol, interactor: FavoriteInteractorProtocol?, router: FavoriteWireframeProtocol) {
        self.view = interface
        self.interactor = interactor
        self.router = router
    }
}

//MARK: - Presenter Methods
extension FavoritePresenter: FavoritePresenterProtocol {
    
}

//MARK: - Private functions
extension FavoritePresenter {
    
}
