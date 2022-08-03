//
//  PhotoViewController.swift
//  PhotoAppCollectionView
//
//  Created by Владимир on 12.05.2022.
//

import UIKit

class PhotoViewController: UIViewController {
    
    var image: UIImage?
    
    @IBOutlet var photoImageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        photoImageView.image = image
    }
    
    @IBAction func shareAction(_ sender: Any) {
        
        let shareController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        
        shareController.completionWithItemsHandler = { _, bool, _, _ in
            if bool {
                print("Успешно!")
            }
        }
        
        
        present(shareController, animated: true, completion: nil)

   }
}
