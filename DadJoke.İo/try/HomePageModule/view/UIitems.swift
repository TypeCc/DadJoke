//
//  UIitems.swift
//  try
//
//  Created by serif mete on 31.01.2023.
//


import UIKit

extension ViewController : PresenterToViewProtocol {
    
    func viewPush(data: Attachment) {
        JKmodel = data
    }
    
    
    
    func NumberLabel() {
        numberLabel = UILabel()
        numberLabel.translatesAutoresizingMaskIntoConstraints = false
        numberLabel.textAlignment = .center
        numberLabel.text = "Tap To Button For Random Joke"
        numberLabel.font = .boldSystemFont(ofSize: 20)
       // numberLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
       // numberLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        numberLabel.lineBreakMode = .byTruncatingTail
        numberLabel.numberOfLines = 0
        view.addSubview(numberLabel)
        numberLabel.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        numberLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        numberLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        /*let margineGuide = view.layoutMarginsGuide
        NSLayoutConstraint.activate([
            numberLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            numberLabel.leadingAnchor.constraint(equalTo: margineGuide.leadingAnchor),
            numberLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            numberLabel.heightAnchor.constraint(equalToConstant: 400)
        ])*/
    }
    func Button(){
        button = UIButton(frame: CGRect(x:self.view.frame.size.width-290, y: 600, width: 200, height: 50))
        button.setTitle("Tap", for: .normal)
        button.backgroundColor = .blue
        button.frame.size.width = 200
        button.frame.size.height = 50
        button.layer.cornerRadius = 25
        view.addSubview(button)
        button.addTarget(self, action: #selector(buttontap), for: .touchUpInside)
         }
    
    @objc func buttontap() {
        view.backgroundColor = .systemRed
        model = JKmodel?.text
        guard let model = model else {return}
        DispatchQueue.main.async {
            self.numberLabel.text = model
        }
        
    }
    
    func Label() {
        label = UILabel()
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.text = "Random Dad Joke Generator"
        label.font = .boldSystemFont(ofSize: 25)
        label.lineBreakMode = .byTruncatingTail
        view.addSubview(label)
        let margineGuide = view.layoutMarginsGuide
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            label.leadingAnchor.constraint(equalTo: margineGuide.leadingAnchor,
                  constant: padding),
            label.trailingAnchor.constraint(equalTo: margineGuide.trailingAnchor),
            label.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
}
