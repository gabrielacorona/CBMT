//
//  ViewController.swift
//  CBMT
//
//  Created by Caro Obregon on 12/10/20.
//  Copyright © 2020 carooobregon. All rights reserved.
//

import UIKit
import FirebaseDatabase

class ViewController: UIViewController {

    private let database = Database.database().reference()
    
    @IBOutlet weak var tfUser: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnLogIn(_ sender: UIButton) {
    }
    
}

