
import SwiftUI
import AVFoundation
import SDWebImageSwiftUI

struct MeditationCat: View {
    @State private var isPlaying: Bool = false
    @State private var singingBowl: AVAudioPlayer?
    
    var body: some View {

        
        Button(action: {
            if isPlaying {
                stopAudio()
            } else {
                playAudio()
            }
            isPlaying.toggle()
        })
        
        
        {
            
            ZStack {
                Color.ourPalete
                    .ignoresSafeArea()
                
                VStack {
                    if isPlaying {
                                            AnimatedImage(name: "animatedSoundBowlCat")
                                                .resizable()
                                                .scaledToFit()
                                   .frame(width: 820, height: 830)
// .animation(.easeInOut(duration: 0.5))
                                        } else {
                                            Image("staticSoundBowlCat")
                                                .resizable()
                                                        .scaledToFit()

                                                .frame(width: 820, height: 830)
                                        }
//                    Image("soundBowlCat")
//                     .animation(.easeInOut(duration: 0.5))
                }

            }
        }
    }

    func playAudio() {
        guard let path = Bundle.main.path(forResource: "Tibetan-bowl-meditation-music", ofType: "mp3") else {
            print("Audio file not found.")
            return
        }
        
        let url = URL(fileURLWithPath: path)
        
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback)
            singingBowl = try AVAudioPlayer(contentsOf: url)
            singingBowl?.play()
                                    
            
        } catch {
            print("Error playing the audio file: \(error.localizedDescription)")
            singingBowl = nil
        }
    }
    
    func stopAudio() {
        singingBowl?.stop()
                        
    }
    
}

#Preview {
    MeditationCat()
}
