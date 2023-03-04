//
//  NewViewController.swift
//  CollectionViewWithDataPassing
//
//  Created by sainath bamen on 20/02/23.
//

import UIKit

class NewViewController: UIViewController {

    @IBOutlet weak var newImage: UIImageView!
    @IBOutlet weak var newLabel: UILabel!
    
    var mimeImage:UIImage?
    var mLabel:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        newLabel.text = mLabel
        newImage.image = mimeImage

    }
    

   

}
