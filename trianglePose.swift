//
//  trianglePose.swift
//  catRelaxtion
//
//  Created by tamera middlebrooks on 5/15/24.
//

import SwiftUI
extension View {
    func embedInScrollView(alignment: Alignment = .center) -> some View {
        GeometryReader { geometry in
            ScrollView {
                self.frame(
                    minWidth: geometry.size.width,
                    minHeight: geometry.size.height,
                    maxHeight: .infinity,
                    alignment: alignment
                )
            }
        }
    }
}


struct trianglePose: View {
    
    @Environment(\.colorScheme) var colorScheme

    
    var body: some View {

        ZStack {
            Color.ourPalete
                    .ignoresSafeArea()
            ScrollView {
                
                VStack {
                    }
                    Image("trianglePoseCat")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 260, height: 250)
//                        .padding(.bottom, 5)
                        .padding(.top, 30)

                
                Text("Triangle Pose")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .padding(.bottom, 15)
//                    .foregroundColor(.black)

                    
                    Text("""
        1. Stand with your feet wide apart.
        2. Turn your right foot out 90 degrees,
        keeping your left foot pointing forward.
        3. Extend your arms out parallel to the floor, palms facing down.
        4. Reach your right hand down your right leg, either resting it on your shin, ankle, or the floor (do what's comfortable!).
        5. Lift your left arm straight up toward the ceiling, fingertips reaching.
        6. Hold the pose for a few deep breaths.
        7. Repeat on the opposite side.
        8. To come out, exhale as you slowly lift your torso back up to standing.
        9. Release your arms and return to a neutral standing position.
        """)

                            .multilineTextAlignment(.center)
                                .fixedSize(horizontal: false, vertical: true)
//                                .foregroundColor(.black)
//                .multilineTextAlignment(.center)
//                   .lineLimit(nil)
                
                Text("Don't forget to breathe!")
                    
                    .font(.caption)
                    .padding(.top, 15)
//                       .lineLimit(nil)
            }
            
        }

    }
}

#Preview {
    trianglePose()
}
