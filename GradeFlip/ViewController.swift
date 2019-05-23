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
    
    //Subject page
    @IBAction func allSubjects(_ sender: Any) {
        performSegue(withIdentifier: "backToSubjects", sender: self)
    }
    //Assignment
    //User to grade page OR scan page
    var assignment1Scans = [Int]()
    @IBAction func scanCheck(sender: UIButton) {
        
        if assignment1Scans.isEmpty{
            performSegue(withIdentifier: "toScan", sender: self)
            print("There are no scans")
        }
        else{
            performSegue(withIdentifier: "toGrade", sender: self)
            print("There are scans")
        }
    }
    
    //Subject 1
    @IBAction func OnetoRight(_ sender: Any) {
        performSegue(withIdentifier: "1toRight", sender: self)
    }
    @IBAction func subjectOne(_ sender: Any) {
        performSegue(withIdentifier: "toAss", sender: self)
    }
    
    
    //Subject 2
    @IBAction func TwotoLeft(_ sender: Any) {
        performSegue(withIdentifier: "2toLeft", sender: self)
    }
    @IBAction func TwotoRight(_ sender: Any) {
        performSegue(withIdentifier: "2toRight", sender: self)
    }
    @IBAction func subjectTwo(_ sender: Any) {
        performSegue(withIdentifier: "toAss2", sender: self)
    }
    
    
    //Subject 3
    @IBAction func ThreetoLeft(_ sender: Any) {
        performSegue(withIdentifier: "3toLeft", sender: self)
    }
    @IBAction func subjectThree(_ sender: Any) {
        performSegue(withIdentifier: "toAss3", sender: self)
    }
    
    
    
    
    
    
    
    
}

