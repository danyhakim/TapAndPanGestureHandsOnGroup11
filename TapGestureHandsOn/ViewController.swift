//
//  ViewController.swift
//  TapGestureHandsOn
//
//  Created by Dany Hakim on 11/07/19.
//  Copyright © 2019 Dany Hakim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rectangleView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func tapped(_ sender: UITapGestureRecognizer) {
        rectangleView.backgroundColor = #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1)
    }
    
    
    @IBAction func panned(_ sender: UIPanGestureRecognizer) {
        //mengambil view
        guard let recognizerView = sender.view else {return}
        //mengambil translasi
        let translasi = sender.translation(in: view)
        //mentranslasikan view
        recognizerView.center.x += translasi.x
        recognizerView.center.y += translasi.y
        //memunculkannya di aplikasi
        sender.setTranslation(.zero, in: view)
    }
    
    
}

