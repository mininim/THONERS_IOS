//
//  EnrollTestViewController.swift
//  youngminhaewireFrame
//
//  Created by 이민섭 on 2022/08/21.
//

import UIKit

class EnrollTestViewController: UIViewController , UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var meeting : Meeting?
    
    lazy var imagePicker: UIImagePickerController = {
        let picker: UIImagePickerController = UIImagePickerController()
        picker.sourceType = .photoLibrary
        picker.delegate = self
        return picker
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func imageViewtapped(_ sender: Any) {
        print("tap")
        self.present(self.imagePicker, animated: true, completion: nil)
    }
    
    
    @IBAction func deleteButtonTapped(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        //info는 딕셔너리 타입으로 가지고 있는 거제
        if let originalImage: UIImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            self.imageView.image = originalImage
            
        }
//
//        //추가하고 나서 pickerview를 없애고난 completion으로 buttonEnableIfValidInput 실행 -> 이미지를 마지막에 넣어도 validate 검사 진행
//        self.dismiss(animated: true, completion: self.buttonEnableIfValidInput )

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        guard let nextvc = segue.destination as? EnrollTestViewController2 else {
            return
        }
        nextvc.meeting = self.meeting
        
    }
    

}
