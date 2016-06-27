//
//  ViewController.swift
//  TestInjectionXcode
//
//  Created by Anyuan on 6/20/16.
//  Copyright © 2016 Anyuan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(hasInjected), name: "INJECTION_BUNDLE_NOTIFICATION", object: nil)
    }
    
    func hasInjected() {
        navigationController?.popViewControllerAnimated(false)
        
        let vc = NewViewController()
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

