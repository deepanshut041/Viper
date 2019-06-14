//
//  ViewController.swift
//  Viper
//
//  Created by Deepanshu Tyagi on 14/06/19.
//  Copyright © 2019 Deepanshu Tyagi. All rights reserved.
//

import UIKit

// V
protocol HomeView: class {
    
    func updateTitle(title:String) -> Void
    
}

class HomeViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    
    var presenter: HomePresentation!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.presenter.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension HomeViewController:HomeView{
    func updateTitle(title: String) {
        textLabel.text = title
    }
}

