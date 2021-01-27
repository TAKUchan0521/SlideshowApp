//
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by 木村貴弘 on 2021/01/16.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    let imageArray = [UIImage(named: "Xcode"), UIImage(named: "VScode"), UIImage(named: "anaconda")]
    var x:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        imageView.image = imageArray[x]
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
