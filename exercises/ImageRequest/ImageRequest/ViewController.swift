//
//  ViewController.swift
//  ImageRequest
//
//  Created by Jarrod Parkes on 11/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import UIKit

// MARK: - ViewController: UIViewController

enum ImageLocation: String {
    case http = "http://www.kittenswhiskers.com/wp-content/uploads/sites/23/2014/02/Kitten-playing-with-yarn.jpg"
    case https = "https://upload.wikimedia.org/wikipedia/commons/4/4d/Cat_November_2010-1a.jpg"
    case error = "not a url"
}

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    let imageLocation = ImageLocation.http.rawValue
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TODO: Add all the networking code here!
        let imageURL = URL(string: imageLocation)!

        let task = URLSession.shared.dataTask(with: imageURL) { (data, response, error) in

            if error == nil {
                let downloadImage = UIImage(data: data!)

                DispatchQueue.main.async {
                    self.imageView.image = downloadImage
                }
            }
        }

        task.resume()
    }
}
