//
//  oneEcom.swift
//  EcommerceProject
//
//  Created by Demo 01 on 11/04/23.
//  Copyright © 2023 scs. All rights reserved.
//

import UIKit

class oneEcom: UIViewController,UINavigationControllerDelegate,UIImagePickerControllerDelegate {

    @IBOutlet weak var image: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func ClickBtnGallery(_ sender: Any) {
        let imagePicker = UIImagePickerController()
       imagePicker.delegate = self
        imagePicker.sourceType = UIImagePickerController.SourceType.camera
        self.present(imagePicker, animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        image.image = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
//
//    func tapgesture()
//    {
//        let tap = UITapGestureRecognizer(target: self, action: #selector(imageTapped))
//        image.isUserInteractionEnabled = true
//        image.addGestureRecognizer(tap)
//
//       @objc func imageTapped()
//        {
//            let imagePicker = UIImagePickerController()
//            imagePicker.sourceType = .camera
//            self.present(imagePicker, animated: true, completion: nil)
//        }
//    }
//extension oneEcom:UIImagePickerControllerDelegate,UINavigationControllerDelegate
//    {
//            imagepicke
//    }
//
    
    
//    func openCamera(){
//        alert.dismiss(animated: true, completion: nil)
//        if(UIImagePickerController .isSourceTypeAvailable(.camera)){
//            picker.sourceType = .camera
//            self.viewController!.present(picker, animated: true, completion: nil)
//        } else {
//            let alertController: UIAlertController = {
//                let controller = UIAlertController(title: "Warning", message: "You don't have camera", preferredStyle: .alert)
//                let action = UIAlertAction(title: "OK", style: .default)
//                controller.addAction(action)
//                return controller
//            }()
//            viewController?.present(alertController, animated: true)
//        }
//    }
//    func openGallery(){
//        alert.dismiss(animated: true, completion: nil)
//        picker.sourceType = .photoLibrary
//        self.viewController!.present(picker, animated: true, completion: nil)
//    }
//
//
//    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
//        picker.dismiss(animated: true, completion: nil)
//    }
//    //for swift below 4.2
//    //func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
//    //    picker.dismiss(animated: true, completion: nil)
//    //    let image = info[UIImagePickerControllerOriginalImage] as! UIImage
//    //    pickImageCallback?(image)
//    //}
//
//    // For Swift 4.2+
//    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
//        picker.dismiss(animated: true, completion: nil)
//        guard let image = info[.originalImage] as? UIImage else {
//            fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
//        }
//        pickImageCallback?(image)
//    }
//


}
