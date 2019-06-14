//
//  HomeInteractor.swift
//  Viper
//
//  Created by Deepanshu Tyagi on 14/06/19.
//  Copyright © 2019 Deepanshu Tyagi. All rights reserved.
//

protocol HomeUseCase {
    func getTitle() -> HomeModel
}

class HomeInteractor { }

extension HomeInteractor: HomeUseCase {
    func getTitle() -> HomeModel{
        return HomeModel(title: "Hello Viper")
    }
}
