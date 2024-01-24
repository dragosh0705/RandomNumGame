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
    
    
    private var NumberTextField : UITextField = {
        var textfield = UITextField()
        textfield.translatesAutoresizingMaskIntoConstraints = false
        return textfield
    }()
    
    private var num1: UIButton = {
        var button = UIButton()
        button.setTitle("1", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 30, weight: .bold)
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.gray, for: .highlighted)
        button.backgroundColor = .darkGray
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private var num2: UIButton = {
        var button = UIButton()
        button.setTitle("2", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 30, weight: .bold)
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.gray, for: .highlighted)
        button.backgroundColor = .darkGray
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private var num3: UIButton = {
        var button = UIButton()
        button.setTitle("3", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 30, weight: .bold)
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.gray, for: .highlighted)
        button.backgroundColor = .darkGray
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private var num4: UIButton = {
        var button = UIButton()
        button.setTitle("4", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 30, weight: .bold)
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.gray, for: .highlighted)
        button.backgroundColor = .darkGray
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private var num5: UIButton = {
        var button = UIButton()
        button.setTitle("5", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 30, weight: .bold)
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.gray, for: .highlighted)
        button.backgroundColor = .darkGray
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private var num6: UIButton = {
        var button = UIButton()
        button.setTitle("6", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 30, weight: .bold)
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.gray, for: .highlighted)
        button.backgroundColor = .darkGray
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private var num7: UIButton = {
        var button = UIButton()
        button.setTitle("7", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 30, weight: .bold)
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.gray, for: .highlighted)
        button.backgroundColor = .darkGray
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private var num8: UIButton = {
        var button = UIButton()
        button.setTitle("8", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 30, weight: .bold)
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.gray, for: .highlighted)
        button.backgroundColor = .darkGray
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private var num9: UIButton = {
        var button = UIButton()
        button.setTitle("9", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 30, weight: .bold)
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.gray, for: .highlighted)
        button.backgroundColor = .darkGray
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private var num0: UIButton = {
        var button = UIButton()
        button.setTitle("0", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 30, weight: .bold)
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.gray, for: .highlighted)
        button.backgroundColor = .darkGray
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private var clear: UIButton = {
        var button = UIButton()
        button.setTitle("C", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 30, weight: .bold)
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.gray, for: .highlighted)
        button.backgroundColor = .orange
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private var plus: UIButton = {
        var button = UIButton()
        button.setTitle("+", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 25, weight: .bold)
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.gray, for: .highlighted)
        button.backgroundColor = .orange
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    private var minus: UIButton = {
        var button = UIButton()
        button.setTitle("-", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 25, weight: .bold)
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.gray, for: .highlighted)
        button.backgroundColor = .orange
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    private var mul: UIButton = {
        var button = UIButton()
        button.setTitle("*", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 25, weight: .bold)
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.gray, for: .highlighted)
        button.backgroundColor = .orange
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    private var div: UIButton = {
        var button = UIButton()
        button.setTitle("%", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 25, weight: .bold)
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.gray, for: .highlighted)
        button.backgroundColor = .orange
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    private var del: UIButton = {
        var button = UIButton()
        button.setTitle("Delete", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 15, weight: .bold)
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.gray, for: .highlighted)
        button.backgroundColor = .orange
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private var Done: UIButton = {
        var button = UIButton()
        button.setTitle("Done", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 15, weight: .bold)
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.gray, for: .highlighted)
        button.backgroundColor = .systemBlue
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private var TFN1 : UILabel = {
        var tf = UILabel()
        tf.text = ""
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    var opcnt : Int = 0
    var numlimit : Int = 0
    
    @objc private func btnclicked() {
        var solution : String = ""

        solution += "1"
        print(solution)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(AppTitle)
        view.addSubview(RandomNumber)
        view.addSubview(NumberTextField)
        view.addSubview(num1)
        view.addSubview(num2)
        view.addSubview(num3)
        view.addSubview(num4)
        view.addSubview(num5)
        view.addSubview(num6)
        view.addSubview(num7)
        view.addSubview(num8)
        view.addSubview(num9)
        view.addSubview(num0)
        view.addSubview(clear)
        view.addSubview(del)
        view.addSubview(plus)
        view.addSubview(minus)
        view.addSubview(mul)
        view.addSubview(div)
        view.addSubview(Done)
        view.addSubview(TFN1)
        
        
        NSLayoutConstraint.activate([
            AppTitle.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            AppTitle.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 80)
        ])
        
        NSLayoutConstraint.activate([
            RandomNumber.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            RandomNumber.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 200)
        ])
        
        NSLayoutConstraint.activate([
            num1.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 50),
            num1.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 460),
            num1.widthAnchor.constraint(equalToConstant: 70),
            num1.heightAnchor.constraint(equalToConstant: 70)
        ])
        NSLayoutConstraint.activate([
            num2.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            num2.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 460),
            num2.widthAnchor.constraint(equalToConstant: 70),
            num2.heightAnchor.constraint(equalToConstant: 70)
        ])
        NSLayoutConstraint.activate([
            num3.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -50),
            num3.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 460),
            num3.widthAnchor.constraint(equalToConstant: 70),
            num3.heightAnchor.constraint(equalToConstant: 70)
        ])
        NSLayoutConstraint.activate([
            num4.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 50),
            num4.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 540),
            num4.widthAnchor.constraint(equalToConstant: 70),
            num4.heightAnchor.constraint(equalToConstant: 70)
        ])
        NSLayoutConstraint.activate([
            num5.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            num5.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 540),
            num5.widthAnchor.constraint(equalToConstant: 70),
            num5.heightAnchor.constraint(equalToConstant: 70)
        ])
        NSLayoutConstraint.activate([
            num6.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -50),
            num6.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 540),
            num6.widthAnchor.constraint(equalToConstant: 70),
            num6.heightAnchor.constraint(equalToConstant: 70)
        ])
        NSLayoutConstraint.activate([
            num7.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 50),
            num7.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 620),
            num7.widthAnchor.constraint(equalToConstant: 70),
            num7.heightAnchor.constraint(equalToConstant: 70)
        ])
        NSLayoutConstraint.activate([
            num8.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            num8.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 620),
            num8.widthAnchor.constraint(equalToConstant: 70),
            num8.heightAnchor.constraint(equalToConstant: 70)
        ])
        NSLayoutConstraint.activate([
            num9.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -50),
            num9.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 620),
            num9.widthAnchor.constraint(equalToConstant: 70),
            num9.heightAnchor.constraint(equalToConstant: 70)
        ])
        NSLayoutConstraint.activate([
            num0.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            num0.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 700),
            num0.widthAnchor.constraint(equalToConstant: 70),
            num0.heightAnchor.constraint(equalToConstant: 70)
        ])
        NSLayoutConstraint.activate([
            clear.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 50),
            clear.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 700),
            clear.widthAnchor.constraint(equalToConstant: 70),
            clear.heightAnchor.constraint(equalToConstant: 70)
        ])
        NSLayoutConstraint.activate([
            del.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -50),
            del.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 700),
            del.widthAnchor.constraint(equalToConstant: 70),
            del.heightAnchor.constraint(equalToConstant: 70)
        ])
        
        NSLayoutConstraint.activate([
            plus.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 50),
            plus.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 380),
            plus.widthAnchor.constraint(equalToConstant: 50),
            plus.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        NSLayoutConstraint.activate([
            minus.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 130),
            minus.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 380),
            minus.widthAnchor.constraint(equalToConstant: 50),
            minus.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        NSLayoutConstraint.activate([
            mul.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -130),
            mul.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 380),
            mul.widthAnchor.constraint(equalToConstant: 50),
            mul.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        NSLayoutConstraint.activate([
            div.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -50),
            div.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 380),
            div.widthAnchor.constraint(equalToConstant: 50),
            div.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        NSLayoutConstraint.activate([
            Done.rightAnchor.constraint(equalTo: self.view.rightAnchor),
            Done.leftAnchor.constraint(equalTo: self.view.leftAnchor),
            Done.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant:-15),
            Done.heightAnchor.constraint(equalToConstant: 50),
        ])
        
        NSLayoutConstraint.activate([
            TFN1.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 50),
            TFN1.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -50),
            TFN1.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 300),
            TFN1.heightAnchor.constraint(equalToConstant: 20),
            TFN1.widthAnchor.constraint(equalToConstant: 38)
        ])
        
    }


}

