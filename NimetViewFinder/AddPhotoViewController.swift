//
//  AddPhotoViewController.swift
//  NimetViewFinder
//
//  Created by Apple on 6/25/19.
//  Copyright © 2019 Nimet. All rights reserved.
//

import UIKit
    class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
       
        var imagePicker = UIImagePickerController()
        
        @IBOutlet weak var newImage: UIImageView!
        @IBOutlet weak var captionText: UITextField!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            imagePicker.delegate = self
            
            // Do any additional setup after loading the view.
        }

        @IBAction func takePhotoTapped(_ sender: Any) {
            imagePicker.sourceType = .camera
            
            present(imagePicker, animated: true, completion: nil)
        }
        
        @IBAction func findPhotoTapped(_ sender: Any) {
            imagePicker.sourceType = .photoLibrary
            
            present(imagePicker, animated: true, completion: nil)
            
        }
        
        @IBAction func savePhotoTapped(_ sender: Any) {
            
        }
        
        
        internal func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            
            if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
                newImage.image = selectedImage
            }
            
            imagePicker.dismiss(animated: true, completion: nil)
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
