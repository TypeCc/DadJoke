//
//  ViewController.swift
//  try
//
//  Created by serif mete on 29.01.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    var button : UIButton!
    var numberLabel : UILabel!
    var label : UILabel!
    let padding : CGFloat = 16
    var JKmodel : Attachment?
    var model : String?
    var presenterNesne : ViewToPresenterProtocol?
    
   // private let frame = CGRect(x: 150, y:150 , width: 200, height: 400)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        Label()
        NumberLabel()
        Button()
        Router.createModule(ref: self)
        presenterNesne?.modeljoke()
    }
    
}

  

