//
//  AudioPlayer.swift
//  SwiftUIRestartAppDemo
//
//  Created by Imran Sayeed on 8/4/22.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.url(forResource: sound, withExtension: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: path)
            audioPlayer?.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
}

