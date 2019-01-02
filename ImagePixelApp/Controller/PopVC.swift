//
//  PopVC.swift
//  ImagePixelApp
//
//  Created by Mrudula on 12/27/18.
//  Copyright © 2018 Mrudula. All rights reserved.
//

import UIKit

class PopVC: UIViewController, UIGestureRecognizerDelegate{

    @IBOutlet weak var popImageView: UIImageView!
    
    @IBOutlet weak var imageTitle: UILabel!
    var passedImage: UIImage!
   // var selectedImageTitle: String!
    
    func initData(forImage image: UIImage){
        self.passedImage = image
       // self.selectedImageTitle = title
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popImageView.image = passedImage
        //self.imageTitle?.text = selectedImageTitle
        addDoubleTap()
    }
    
    func addDoubleTap() {
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(screenDoubleTapped))
        doubleTap.numberOfTapsRequired = 2
        doubleTap.delegate = self
        view.addGestureRecognizer(doubleTap)
    }
    
    @objc func screenDoubleTapped() {
        dismiss(animated: true, completion: nil)
    }
}
