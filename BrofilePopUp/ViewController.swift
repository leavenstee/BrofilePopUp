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
        
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        button.backgroundColor = .red
        button.addTarget(self, action: #selector(showBro), for: .touchUpInside)
        self.view.addSubview(button)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func showBro(){
        
        let bro = BrofilePopUp(firstName: "Steven", lastName: "Lee", username: "leavenstee", picture: #imageLiteral(resourceName: "dribbble-burguer"), bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla quis tempor nisi. Fusce sit amet egestas nunc, quis convallis metus. Suspendisse nisi augue, congue sed convallis ac, maximus laoreet lorem. Nunc pretium, diam vel volutpat rhoncus, mi quam fermentum erat, nec aliquet velit quam eget purus. Cras commodo nunc leo, quis pharetra leo facilisis egestas. Nunc urna purus, pellentesque sed dictum ut, vehicula id libero.")
        bro.show(vc: self)
    }


}

