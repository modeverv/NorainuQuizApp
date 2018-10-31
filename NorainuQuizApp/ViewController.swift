//
//  ViewController.swift
//  NorainuQuizApp
//
//  Created by norainu on 2018/11/01.
//  Copyright © 2018 norainu. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  @IBAction func tapPlaySystemSound(_ sender: Any) {
    AudioServicesPlayAlertSoundWithCompletion(1000){
      // サウンドがなり割った後の処理
    }

  }

  @IBAction func tapPlayCustomSound(_ sender: Any) {
    let soundUrl = Bundle.main.url(forResource: "custom", withExtension: "m4a")
    var soundId:SystemSoundID = 0
    AudioServicesCreateSystemSoundID(soundUrl! as CFURL,&soundId)
    AudioServicesPlaySystemSoundWithCompletion(soundId) {
      
    }
  }

  @IBAction func tapVibe(_ sender: Any) {
    AudioServicesPlaySystemSoundWithCompletion(kSystemSoundID_Vibrate) {
      //
    }
  }
}

