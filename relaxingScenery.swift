//
//  relaxingScenery.swift
//  catRelaxtion
//
//  Created by tamera middlebrooks on 5/1/24.
//

import SwiftUI
import AVFoundation


struct RelaxingScenery: View {
    var body: some View {
        MovingClouds()
    }
}

struct TheClouds: View {
    var birdsChirpingSound: AVAudioPlayer?
    let duration: Double
//    let alignment: Alignment
    
    
    init(proxy: GeometryProxy, rotationStart: Double, duration: Double) {
        self.duration = duration
        
        let path = Bundle.main.path(forResource: "birds-ambiance-204513.mp3", ofType: nil)!
        
        let url = URL(fileURLWithPath: path)
        
        
        do {
            birdsChirpingSound = try AVAudioPlayer (contentsOf: url)
            birdsChirpingSound?.play()
            
        } catch {
            print("Error playing the audio file.")
            birdsChirpingSound = nil
        }
//        birdsChirpingSound?.stop()
    }
    
    
    @StateObject var provider = CloudProvider()
    @State var move = false
//        let proxy: GeometryProxy
//        let rotationStart: Double
//        let alignment: Alignment
//


    var body: some View {
        Image("cloudArtwork2")
            .offset(provider.offset)
            .rotationEffect(.degrees(move ? 0 : 360))
                        .animation(Animation.linear(duration: duration).repeatForever(autoreverses: false))
            .frame(width: 100, height: 100)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .opacity(0.8)
                        .onAppear {
                            move.toggle()
                        }
                        .onDisappear {
                            birdsChirpingSound?.stop()
                        }
    }
}


struct MovingClouds: View {
    let blur: CGFloat = 60

    var body: some View {
        GeometryReader { proxy in
            
            ZStack(alignment: .topLeading) {
                
                Color.skyBlue
                
                
                VStack(alignment: .leading) {
                    TheClouds(proxy: proxy, rotationStart: 0, duration: 90)
                    TheClouds(proxy: proxy, rotationStart: 240, duration: 100)
                    TheClouds(proxy: proxy, rotationStart: 140, duration: 150)
                    TheClouds(proxy: proxy, rotationStart: 0, duration: 90)
                    TheClouds(proxy: proxy, rotationStart: 0, duration: 90)
                    TheClouds(proxy: proxy, rotationStart: 0, duration: 200)
                    TheClouds(proxy: proxy, rotationStart: 0, duration: 300)
                    TheClouds(proxy: proxy, rotationStart: 0, duration: 190)
                    
                }
            }
//            .blur(radius: blur)

        }
        .ignoresSafeArea()
    }
}

class CloudProvider: ObservableObject {
    let offset: CGSize
    let frameHeightRatio: CGFloat

    init() {
        frameHeightRatio = CGFloat.random(in: 0.7 ..< 1.4)
        offset = CGSize (width: CGFloat.random(in: -150 ..< 150),
                         height: CGFloat.random(in: -150 ..< 150))
    }
}

#Preview {
    RelaxingScenery()
}
