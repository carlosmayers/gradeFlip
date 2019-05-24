//
//  ScanViewController.swift
//  GradeFlip
//
//  Created by Apple on 5/22/19.
//  Copyright © 2019 Carlos Mayers. All rights reserved.
//

import UIKit



class ScanViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    
    @IBAction func toWorksheet(_ sender: Any) {
        performSegue(withIdentifier: "toWorksheet", sender: self)
    }
    
    
    @IBAction func toGrades(_ sender: Any) {
        performSegue(withIdentifier: "toGrades", sender: self)
    }
    
    //scan page code
    
    @IBOutlet weak var myImageView: UIImageView!
    
    @IBAction func importImage(_ sender: AnyObject) {
        let image = UIImagePickerController()
        image.delegate = self
        
        image.sourceType = UIImagePickerController.SourceType.photoLibrary
        image.allowsEditing = false
        
        self.present(image, animated: true){
            //code
        }
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            myImageView.image = image
        }
        else{
            //Error
        }
        
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
