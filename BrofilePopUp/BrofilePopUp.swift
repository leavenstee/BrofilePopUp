//
//  BrofilePopUp.swift
//  BrofilePopUp
//
//  Created by Steven Lee on 9/20/17.
//  Copyright © 2017 Steven Lee. All rights reserved.
//

import UIKit

class BrofilePopUp: UIView {
    
    private var firstName : String!
    private var lastName : String!
    private var username : String!
    private var picture : UIImage!
    private var bio : String!
    private var blurEffect : UIBlurEffect!
    private var blurEffectView : UIVisualEffectView!
    
    init(firstName:String, lastName:String, username:String, picture:UIImage, bio:String) {
        super.init(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        self.firstName = firstName
        self.lastName = lastName
        self.username = username
        self.picture = picture
        self.bio = bio
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView(){
    
        self.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(dismiss)))
        
        let nameLabel = UILabel(frame: CGRect(x: 0, y: 0, width: self.frame.width, height: 50))
        let userNameLabel = UILabel(frame: CGRect(x: 0, y: 0, width: self.frame.width, height: 50))
        let pictureView = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        let bioLabel = UILabel(frame: CGRect(x: 0, y: 0, width: self.frame.width-20, height: 300))
        
        nameLabel.center = CGPoint(x: self.frame.width/2, y: 30)
        nameLabel.textAlignment = .center
        pictureView.center = CGPoint(x: self.frame.width/2, y: 110)
        userNameLabel.center = CGPoint(x: self.frame.width/2, y: 180)
        userNameLabel.textAlignment = .center
        bioLabel.center = CGPoint(x: self.frame.width/2, y: 300)
        bioLabel.textAlignment = .center
        pictureView.layer.cornerRadius = 20
        nameLabel.text = "\(firstName!) \(lastName!)"
        userNameLabel.text = "@\(username!)"
        pictureView.image = picture
        bioLabel.text = bio
        bioLabel.numberOfLines = 10
        
        nameLabel.font = UIFont(name: "Futura", size: 40)
        userNameLabel.font = UIFont(name: "Futura", size: 14)
        bioLabel.font = UIFont(name: "Futura", size: 14)
        
        
        self.addSubview(nameLabel)
        self.addSubview(userNameLabel)
        self.addSubview(pictureView)
        self.addSubview(bioLabel)
    }
    
    func setupBindings(){
        
    }
    
    func updateProfile(){
        
    }
    
    func show(vc:UIViewController){
        self.frame = CGRect(x: vc.view.frame.width/2 - (vc.view.frame.width-100)/2, y: 1000, width: vc.view.frame.width-100, height: vc.view.frame.height-300)
        self.setupView()
        blurEffect = UIBlurEffect(style: UIBlurEffectStyle.dark)
        blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = vc.view.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        blurEffectView.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(dismiss)))
        vc.view.addSubview(blurEffectView)
        self.backgroundColor = .white
        self.layer.cornerRadius = 20
        vc.view.addSubview(self)
        UIView.animate(withDuration: 1.0) {
            self.center = vc.view.center
        }
        
    }
    
    @objc func dismiss(){
        UIView.animate(withDuration: 0.5, animations: {
            self.center = CGPoint(x: self.center.x, y: 1000)
        }) { (true) in
            self.blurEffectView.removeFromSuperview()
        }
      
    }

}


