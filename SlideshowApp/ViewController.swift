//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 木村貴弘 on 2021/01/16.
//

import UIKit

class ViewController: UIViewController {

    // outletの接続
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var playImage: UIButton!
    
    // 配列に指定するindex番号
    var nowIndex: Int = 0
    
    // スライドショーのタイマー
    var timer: Timer!
    
    // スライドショーの画像配列
    let imageArray = [UIImage(named: "Xcode"), UIImage(named: "VScode"), UIImage(named: "anaconda")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        image.image = imageArray[nowIndex]
    }

    // 次の画像を読み込む
    @IBAction func nextImage(_ sender: Any) {
        nowIndex += 1
        if nowIndex == imageArray.count {
            nowIndex = 0
        }
        image.image = imageArray[nowIndex]
    }
    
    // 前の画像を読み込む
    @IBAction func previousImage(_ sender: Any) {
        nowIndex -= 1
        if nowIndex == -1 {
            nowIndex = 2
        }
        image.image = imageArray[nowIndex]
    }
    
    // 自動で次の画像を読み込む
    @IBAction func playImage(_ sender: Any) {
        if self.timer == nil {
            self.timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(onTimer(_ :)), userInfo: nil, repeats: true)
        } else {
            self.timer.invalidate()
            self.timer = nil
        }
        
    }
    
    @objc func onTimer(_ timer: Timer) {
        nowIndex += 1
        if nowIndex == imageArray.count {
            nowIndex = 0
        }
        image.image = imageArray[nowIndex]
    }
    
    // 遷移先から戻るSegue
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        resultViewController.x = nowIndex
    }

    
}

