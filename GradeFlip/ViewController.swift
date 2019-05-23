//
//  ViewController.swift
//  GradeFlip
//
//  Created by Apple on 5/22/19.
//  Copyright © 2019 Carlos Mayers. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    
    //not me
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //code to decide if user will be sent to grade page or scan page
    var assignment1Scans = [Int]()
    @IBAction func scanCheck(sender: UIButton) {
        if assignment1Scans == [0]{
//            performSegue(withIdentifier: "assignmentToScan", sender: (Any).self)
        }
        else{
            print("There are scans")
//          write code to push user to specific view controller
        }
    }
    
}

