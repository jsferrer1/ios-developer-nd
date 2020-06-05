//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Jerry Ferrer on 6/1/20.
//  Copyright © 2020 Home. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordBtn: UIButton!
    @IBOutlet weak var recordingLabel: UILabel!
    @IBOutlet weak var stopRecordingBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        stopRecordingBtn.isEnabled = false;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func recordAudio(_ sender: AnyObject) {
        print("record button was pressed.")
        recordingLabel.text = "Recording in Progress"
        recordBtn.isEnabled = false;
        stopRecordingBtn.isEnabled = true;
    }
    
    @IBAction func stopRecording(_ sender: Any) {
        recordingLabel.text = "Tap to Record"
        recordBtn.isEnabled = true;
        stopRecordingBtn.isEnabled = false;
    }
}

