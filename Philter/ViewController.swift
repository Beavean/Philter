//
//  ViewController.swift
//  Philter
//
//  Created by Beavean on 16.06.2022.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {


    @IBOutlet var intensity: UILabel!
    @IBOutlet var imageView: UIImageView!
    var currentImage: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "PHILTER"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(importPicture))
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let image = info[.editedImage] as? UIImage else { return }
        dismiss(animated: true)
        currentImage = image
    }
    
    @objc func importPicture() {
        let picker = UIImagePickerController()
        picker.delegate = self
        present(picker, animated: true)
    }

    
    
    @IBAction func save(_ sender: Any) {
    }
    @IBAction func changeFilter(_ sender: Any) {
    }
    @IBAction func intensityChanged(_ sender: Any) {
    }
    
}

