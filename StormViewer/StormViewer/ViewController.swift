//
//  ViewController.swift
//  StormViewer
//
//  Created by Domantas Jocas on 13/11/2025.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var pictures = [String]()
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items{
            if(item.hasPrefix("nssl")){
                pictures.append(item)
            }
        }
        print(pictures)
        // Do any additional setup after loading the view.
    }


}

