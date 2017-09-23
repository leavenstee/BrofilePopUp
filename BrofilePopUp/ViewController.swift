//
//  ViewController.swift
//  BrofilePopUp
//
//  Created by Steven Lee on 9/20/17.
//  Copyright © 2017 Steven Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let bro = BrofilePopUp(firstName: "Steven", lastName: "Lee", username: "leavenstee", picture: #imageLiteral(resourceName: "dribbble-burguer"), bio: "iOS Developer / Supreme Lord")
        
        bro.show(vc: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

