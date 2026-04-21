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
    @Environment(\.horizontalSizeClass) private var hSizeClass

    var body: some View {
        VStack(spacing: 16) {
            // Title
            Text("Sound Board")
                .font(.system(size: 40))
                .bold()
                .padding(.top)
                .foregroundStyle(.orange)

            // Flexible image area (grows in the middle)
            GeometryReader { geo in
                VStack {
                    Image("Animals")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: min(geo.size.width * 0.8, hSizeClass == .regular ? 800 : 500),
                               maxHeight: min(geo.size.height * 0.9, hSizeClass == .regular ? 800 : 500))
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }

            // Bottom buttons section
            VStack(spacing: 16) {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: hSizeClass == .regular ? 200 : 140), spacing: 16)], spacing: 16) {
                    Button("Cow") {
                        let soundName = "Cow"
                        print(soundName)
                        guard let soundFile = NSDataAsset(name: soundName) else {
                            print("I can not read the file called \(soundName)")
                            return
                        }
                        do {
                            audioPlayer = try AVAudioPlayer(data: soundFile.data)
                            audioPlayer.play()
                        } catch {
                            print("ERROR: \(error.localizedDescription)!")
                        }
                    }
                    .frame(height: 52)
                    .frame(maxWidth: .infinity)
                    .buttonStyle(BorderedProminentButtonStyle())
                    .controlSize(.regular)
                    .bold()
                    .foregroundStyle(.red)
                    .font(Font.title3.bold())

                    Button("Cat") {
                        let soundName = "Cat"
                        print(soundName)
                        guard let soundFile = NSDataAsset(name: soundName) else {
                            print("I can not read the file called \(soundName)")
                            return
                        }
                        do {
                            audioPlayer = try AVAudioPlayer(data: soundFile.data)
                            audioPlayer.play()
                        } catch {
                            print("ERROR: \(error.localizedDescription)!")
                        }
                    }
                    .frame(height: 52)
                    .frame(maxWidth: .infinity)
                    .buttonStyle(BorderedProminentButtonStyle())
                    .controlSize(.regular)
                    .bold()
                    .foregroundStyle(.yellow)
                    .font(Font.title3.bold())

                    Button("Dog") {
                        let soundName = "Dog"
                        print(soundName)
                        guard let soundFile = NSDataAsset(name: soundName) else {
                            print("I can not read the file called \(soundName)")
                            return
                        }
                        do {
                            audioPlayer = try AVAudioPlayer(data: soundFile.data)
                            audioPlayer.play()
                        } catch {
                            print("ERROR: \(error.localizedDescription)!")
                        }
                    }
                    .frame(height: 52)
                    .frame(maxWidth: .infinity)
                    .buttonStyle(BorderedProminentButtonStyle())
                    .controlSize(.regular)
                    .bold()
                    .foregroundStyle(.green)
                    .font(Font.title3.bold())

                    Button("Lion") {
                        let soundName = "Lion"
                        print(soundName)
                        guard let soundFile = NSDataAsset(name: soundName) else {
                            print("I can not read the file called \(soundName)")
                            return
                        }
                        do {
                            audioPlayer = try AVAudioPlayer(data: soundFile.data)
                            audioPlayer.play()
                        } catch {
                            print("ERROR: \(error.localizedDescription)!")
                        }
                    }
                    .frame(height: 52)
                    .frame(maxWidth: .infinity)
                    .buttonStyle(BorderedProminentButtonStyle())
                    .controlSize(.regular)
                    .bold()
                    .foregroundStyle(.purple)
                    .font(Font.title3.bold())

                    Button("Tiger") {
                        let soundName = "Tiger"
                        print(soundName)
                        guard let soundFile = NSDataAsset(name: soundName) else {
                            print("I can not read the file called \(soundName)")
                            return
                        }
                        do {
                            audioPlayer = try AVAudioPlayer(data: soundFile.data)
                            audioPlayer.play()
                        } catch {
                            print("ERROR: \(error.localizedDescription)!")
                        }
                    }
                    .frame(height: 52)
                    .frame(maxWidth: .infinity)
                    .buttonStyle(BorderedProminentButtonStyle())
                    .controlSize(.regular)
                    .bold()
                    .foregroundStyle(.orange)
                    .font(Font.title3.bold())

                    Button("Random") {
                        let soundName = Animals[Int.random(in: 0..<Animals.count)]
                        print(soundName)
                        guard let soundFile = NSDataAsset(name: soundName) else {
                            print("I can not read the file called \(soundName)")
                            return
                        }
                        do {
                            audioPlayer = try AVAudioPlayer(data: soundFile.data)
                            audioPlayer.play()
                        } catch {
                            print("ERROR: \(error.localizedDescription)!")
                        }
                    }
                    .frame(height: 52)
                    .frame(maxWidth: .infinity)
                    .buttonStyle(BorderedProminentButtonStyle())
                    .controlSize(.regular)
                    .bold()
                    .foregroundStyle(.black)
                    .font(Font.title3.bold())
                }
                .padding(.horizontal)
                .padding(.bottom)
            }
        }
        .padding(.horizontal)
    }
}

#Preview("Light Mode") {
    ContentView()
        .preferredColorScheme(ColorScheme.light)
}

#Preview("Dark Mode") {
    ContentView()
        .preferredColorScheme(ColorScheme.dark)
}
