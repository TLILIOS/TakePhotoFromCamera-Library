//
//  ViewController.swift
//  TakePhotoFromCamera&Library
//
//  Created by HTLILI on 16/05/2024.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {

    @IBOutlet weak var imgPhoto: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func btnTakePhoto(_ sender: UIButton) {
        showPhotoAlert()
    }
    
    func showPhotoAlert() {
        let alert = UIAlertController(title: "Take Photo From", message: nil, preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Camera", style: .default, handler: { action in self.getPhoto(type: .camera)
            
        }))
        alert.addAction(UIAlertAction(title: "Photo Librery", style: .default, handler: { action in self.getPhoto(type: .photoLibrary)
            
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    func getPhoto(type: UIImagePickerController.SourceType) {
        let picker = UIImagePickerController()
        picker.sourceType = type
        picker.allowsEditing = true
        picker.delegate = self
        present(picker, animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        dismiss(animated: true, completion: nil)
//        if let image = info[.originalImage] as? UIImage {
//            imgPhoto.image = image
//        } else {
//            print(" Image not found!!!")
//        }
        // We coul use image = info[.originalImage]
        guard let image = info[.editedImage] as? UIImage else {
            print("Image not found!!!")
            return
        }
        imgPhoto.image = image
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
}

