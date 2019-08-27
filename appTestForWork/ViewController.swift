//
//  ViewController.swift
//  appTestForWork
//
//  Created by fathy  on 8/18/19.
//  Copyright © 2019 fathy . All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    @IBOutlet weak var nameText: UITextField!
    var label:String?
    
    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var imagGallry: UIImageView!
    var imagePaker = UIImagePickerController()
    
     func alertMasseg(massage : String) {
        let alert = UIAlertController(title: "Error", message:massage, preferredStyle: .alert)
        let ok = UIAlertAction(title: "ok", style: .cancel, handler: nil)
        alert.addAction(ok)
        let cancel = UIAlertAction(title: "cancel", style: .default, handler: nil)
        alert.addAction(cancel)
        present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePaker.delegate = self
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(tapToClose))
        imagGallry.addGestureRecognizer(tap)
    }

    @IBAction func ClickButtom(_ sender: Any) {
        guard let  name = nameText.text, !name.isEmpty else {
            
            alertMasseg(massage: "please chek your name")
            
        return
    }
        guard let password = passwordText.text, !password.isEmpty else {
            
            alertMasseg(massage: "please chek your password")
            return
        }
    let home = storyboard?.instantiateViewController(withIdentifier: "nextViewController")as?nextViewController
        
        navigationController?.pushViewController(home!, animated: true)
}
    @objc func tapToClose(){
        present(imagePaker, animated: true, completion: nil)
    }

}


extension ViewController:UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let packimag = info[.originalImage] as! UIImage
        imagGallry.image = packimag
        dismiss(animated: true, completion: nil)
    }
}
