//
//  ContentView.swift
//  Soundboard
//
//  Created by Charles Piao on 2/20/26.
//

import SwiftUI
import AVFAudio

struct ContentView: View {
    @State private var audioPlayer: AVAudioPlayer!
    @State private var image = "Animals"
    @State private var Animals = ["Cow", "Cat", "Dog", "Lion", "Tiger",]
    var body: some View {
            VStack {
                Text("Sound Board")
                    .font(.system(size: 100))
                    .bold()
                    .padding()
                    .foregroundStyle(.orange)
                Spacer()
                HStack{
                    Image("Animals")
                }
                HStack{
                    Button("Cow"){
                        let soundName = "Cow"
                        print(soundName)
                        
                        guard let soundFile = NSDataAsset(name: soundName) else{
                            print("I can not read the file called \(soundName)")
                            return
                        }
                        
                        do {
                            audioPlayer = try AVAudioPlayer(data: soundFile.data)
                            audioPlayer.play()
                        } catch{
                            print("ERROR: \(error.localizedDescription)!")
                        }
                    }
                    .buttonStyle(BorderedProminentButtonStyle())
                    .controlSize(.large)
                    .bold()
                    .padding()
                    .foregroundStyle(.red)
                    .font(Font.title.bold())
                    
                    Button("Cat"){
                        let soundName = "Cat"
                        print(soundName)
                        
                        guard let soundFile = NSDataAsset(name: soundName) else{
                            print("I can not read the file called \(soundName)")
                            return
                        }
                        
                        do {
                            audioPlayer = try AVAudioPlayer(data: soundFile.data)
                            audioPlayer.play()
                        } catch{
                            print("ERROR: \(error.localizedDescription)!")
                        }
                    }
                    .buttonStyle(BorderedProminentButtonStyle())
                    .controlSize(.large)
                    .bold()
                    .padding()
                    .foregroundStyle(.yellow)
                    .font(Font.title.bold())
                    
                    Button("Dog"){
                        let soundName = "Dog"
                        print(soundName)
                        
                        guard let soundFile = NSDataAsset(name: soundName) else{
                            print("I can not read the file called \(soundName)")
                            return
                        }
                        
                        do {
                            audioPlayer = try AVAudioPlayer(data: soundFile.data)
                            audioPlayer.play()
                        } catch{
                            print("ERROR: \(error.localizedDescription)!")
                        }
                    }
                    .buttonStyle(BorderedProminentButtonStyle())
                    .controlSize(.large)
                    .bold()
                    .padding()
                    .foregroundStyle(.green)
                    .font(Font.title.bold())
                    
                    Button("Lion"){
                        let soundName = "Lion"
                        print(soundName)
                        
                        guard let soundFile = NSDataAsset(name: soundName) else{
                            print("I can not read the file called \(soundName)")
                            return
                        }
                        
                        do {
                            audioPlayer = try AVAudioPlayer(data: soundFile.data)
                            audioPlayer.play()
                        } catch{
                            print("ERROR: \(error.localizedDescription)!")
                        }
                    }
                    .buttonStyle(BorderedProminentButtonStyle())
                    .controlSize(.large)
                    .bold()
                    .padding()
                    .foregroundStyle(.purple)
                    .font(Font.title.bold())
                    Button("Tiger"){
                        let soundName = "Tiger"
                        print(soundName)
                        
                        guard let soundFile = NSDataAsset(name: soundName) else{
                            print("I can not read the file called \(soundName)")
                            return
                        }
                        
                        do {
                            audioPlayer = try AVAudioPlayer(data: soundFile.data)
                            audioPlayer.play()
                        } catch{
                            print("ERROR: \(error.localizedDescription)!")
                        }
                    }
                    .buttonStyle(BorderedProminentButtonStyle())
                    .controlSize(.large)
                    .bold()
                    .padding()
                    .foregroundStyle(.orange)
                    .font(Font.title.bold())
                    
                    Button("Random"){
                        let soundName = Animals[Int.random(in: 0..<Animals.count)]
                        print(soundName)
                        
                        guard let soundFile = NSDataAsset(name: soundName) else{
                            print("I can not read the file called \(soundName)")
                            return
                        }
                        
                        do {
                            audioPlayer = try AVAudioPlayer(data: soundFile.data)
                            audioPlayer.play()
                        } catch{
                            print("ERROR: \(error.localizedDescription)!")
                        }
                    }
                    .buttonStyle(BorderedProminentButtonStyle())
                    .controlSize(.large)
                    .bold()
                    .padding()
                    .foregroundStyle(.black)
                    .font(Font.title.bold())
                }
            }
            .padding()
    }
}

#Preview {
    ContentView()
}
