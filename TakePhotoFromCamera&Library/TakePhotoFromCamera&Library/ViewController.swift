//
//  ViewController.swift
//  TakePhotoFromCamera&Library
//
//  Created by HTLILI on 16/05/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgPhoto: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func btnTakePhoto(_ sender: UIButton) {
        showPhotoAlert()
    }
    
    func showPhotoAlert() {
        let alert = UIAlertController(title: "Take Photo From", message: nil, preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Camera", style: .default, handler: { action in
            
        }))
        alert.addAction(UIAlertAction(title: "Photo Librery", style: .default, handler: { action in
            
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}

