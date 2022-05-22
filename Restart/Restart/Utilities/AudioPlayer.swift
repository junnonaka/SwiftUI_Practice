//
//  AudioPlayer.swift
//  Restart
//
//  Created by 野中淳 on 2022/04/06.
//

import Foundation
import AVFoundation

var audioPlayer:AVAudioPlayer?

//type：拡張子
func playSound(sound:String,type:String){
    if let path = Bundle.main.path(forResource: sound, ofType: type){
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        }catch{
            print("cound not play sound")
        }
    }
}
