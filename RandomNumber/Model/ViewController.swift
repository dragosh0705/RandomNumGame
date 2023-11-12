//
//  ViewController.swift
//  RandomNumber
//
//  Created by 최영우 on 2023. 11. 10..
//

import UIKit

class ViewController: UIViewController {
    
    private var AppTitle : UILabel = {
        var label = UILabel()
        label.text = "Random Number Game"
        label.font = UIFont.systemFont(ofSize: 30)
        label.textColor = .green
        label.sizeToFit()
        label.sizeThatFits(CGSize(width: label.frame.width, height: 250))
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private var RandomNumber : UILabel = {
        var label = UILabel()
        label.text = String(Int.random(in: 100..<10000))
        label.font = UIFont.systemFont(ofSize: 50)
        label.textColor = .systemBlue
        label.sizeToFit()
        label.sizeThatFits(CGSize(width: label.frame.width, height: 250))
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private var TimerLabel : UILabel = {
        var label = UILabel()
        label.text = "Timer : "
        label.font = UIFont.systemFont(ofSize: 30)
        label.sizeToFit()
        label.sizeThatFits(CGSize(width: label.frame.width, height: 250))
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private var LeftTimeLabel : UILabel = {
        var label = UILabel()
        var leftTime = 60
        for i in 0..<leftTime {
            label.text = String(leftTime)
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2){
                leftTime -= 1
                print(leftTime)
            }
        }
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(AppTitle)
        view.addSubview(RandomNumber)
        view.addSubview(TimerLabel)
        view.addSubview(LeftTimeLabel)
        
        NSLayoutConstraint.activate([
            AppTitle.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            AppTitle.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 80)
        ])
        
        NSLayoutConstraint.activate([
            RandomNumber.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            RandomNumber.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 200)
        ])
        
        NSLayoutConstraint.activate([
            TimerLabel.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 50),
            TimerLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 300)
        ])
        
        NSLayoutConstraint.activate([
            LeftTimeLabel.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 200),
            LeftTimeLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 300)
        ])
    }


}

