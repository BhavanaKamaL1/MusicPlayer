//
//  ViewController1.swift
//  MusicPlayer
//
//  Created by DDUKK on 01/11/22.
//

import UIKit
import AVFoundation

class ViewController1: UIViewController {
    
    var avplayer: AVAudioPlayer?
    
   
    
    @IBOutlet weak var pause: UIButton!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var label2: UILabel!
    public var img1 = ""
    public var lbl1 = ""
    public var song = ""
    
        
    override func viewDidLoad() {
        super.viewDidLoad()

        image2.image = UIImage(named: img1)
        label2.text = lbl1
    }
    

    @IBAction func play(_ sender: UIButton) {
        pause.setImage(UIImage(named: "pause"), for: .normal)
        if avplayer?.isPlaying == true{
            avplayer?.pause()
            pause.setImage(UIImage(named: "play"), for: .normal)
            
        }else{
            guard let url = Bundle.main.url(forResource: song, withExtension: "mp3")
      else{
            return
        }
            do{
                avplayer = try AVAudioPlayer(contentsOf: url)
                avplayer?.play()
            }catch{
                
            }
        
    }
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
