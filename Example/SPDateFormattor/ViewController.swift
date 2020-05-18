//
//  ViewController.swift
//  SPDateFormattor
//
//  Created by spandey211 on 05/18/2020.
//  Copyright (c) 2020 spandey211. All rights reserved.
//

import UIKit
import SPDateFormattor

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let dateParams = Date.getDateComponent()
        let diff = Date.differenceBetweenDates()
        print(diff)
        print(dateParams)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

