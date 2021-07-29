//
//  ViewController.swift
//  MyNetworkingApp
//
//  Created by Ilya Yushkov on 15.07.2021.
//

import UIKit

class MainViewController: UIViewController {
    
    
    @IBAction func downloadButtonPressed() {

        performSegue(withIdentifier: "showImage", sender: nil)
    }
}
