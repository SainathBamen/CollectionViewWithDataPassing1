//
//  ViewController.swift
//  CollectionViewWithDataPassing
//
//  Created by sainath bamen on 20/02/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    var courseTitle:[String] = ["JAVA BOOTCAMP","LEARN TYPE SCRIPT","REACT JS CRASH COURSE","GIT WITH GITHUB","PYTHON CRASH COURSE","CODE SPACE CRASH COURSE","C++ BOOTCAMP", "JAVA BOOTCAMP","LEARN TYPE SCRIPT","REACT JS CRASH COURSE","GIT WITH GITHUB","PYTHON CRASH COURSE","CODE SPACE CRASH COURSE","C++ BOOTCAMP",]
    var courseImage:[String] = ["hc1","hc2","hc3","hc4","hc5","hc6","hc7","hc1","hc2","hc3","hc4","hc5","hc6","hc7"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return courseImage.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCollectionViewCell
        cell.myLabel.text = courseTitle[indexPath.row]
        cell.myImage.image = UIImage(named: courseImage[indexPath.row])
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.systemBlue.cgColor
        cell.layer.cornerRadius = 25
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = (collectionView.frame.size.width - 20)/2
        return CGSize(width: size, height: size)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "NewViewController") as! NewViewController
        vc.mimeImage = UIImage(named: courseImage[indexPath.row])
        vc.mLabel = courseTitle[indexPath.row]
        print("\(courseTitle[indexPath.row]) course selected ")
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
    
}


