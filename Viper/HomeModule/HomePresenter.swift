//
//  HomePresenter.swift
//  Viper
//
//  Created by Deepanshu Tyagi on 14/06/19.
//  Copyright © 2019 Deepanshu Tyagi. All rights reserved.
//

import Foundation

protocol HomePresentation {
    func viewDidLoad() -> Void
    
}

class HomePresenter {
    weak var view: HomeView?
    var interactor: HomeUseCase
    var router: HomeRouting
    
    init(view: HomeView, interactor: HomeUseCase, router: HomeRouting){
        self.interactor = interactor
        self.router = router
        self.view = view
    }
    
}

extension HomePresenter:HomePresentation{
    func viewDidLoad() {
        let homeModel:HomeModel = self.interactor.getTitle()
        print("Home model value is \(homeModel.title)")
        view?.updateTitle(title: homeModel.title)
        
        DispatchQueue.main.async {
            [weak self] in guard let `self` = self else { return }
            self.view?.updateTitle(title: homeModel.title)
        }
    }
    
    
}
