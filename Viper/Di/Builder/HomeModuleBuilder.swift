//
//  HomeModuleBuilder.swift
//  Viper
//
//  Created by Deepanshu Tyagi on 14/06/19.
//  Copyright © 2019 Deepanshu Tyagi. All rights reserved.
//
import UIKit


class HomeModuleBuilder {
    static func build() -> UIViewController {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let view = storyboard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        
        let interactor = HomeInteractor()
        let router = HomeRouter(view: view)
        let presenter = HomePresenter(view: view, interactor: interactor, router: router)
        view.presenter = presenter
        return view
    }
}
