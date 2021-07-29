//
//  ImageViewController.swift
//  MyNetworkingApp
//
//  Created by Ilya Yushkov on 15.07.2021.
//

import UIKit

class ImageViewController: UIViewController {
    
    
    @IBOutlet var image: UIImageView!
    
    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        activityIndicator.startAnimating()
        activityIndicator.hidesWhenStopped = true
        fetchImage()
        
    }
    
    
    private func fetchImage() {
        guard let url = URL(string: "https://wallpapershome.ru/images/pages/pic_h/12340.jpg") else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data, let response = response else {
                print(error?.localizedDescription ?? "No error description")
                return
            }
            print(response)
            guard let image = UIImage(data: data) else { return }
            
            DispatchQueue.main.async {
                self.image.image = image
                self.activityIndicator.stopAnimating()
            }
        }.resume()
    }
    
}
