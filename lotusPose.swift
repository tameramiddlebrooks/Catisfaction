//
//  lotusPose.swift
//  catRelaxtion
//
//  Created by tamera middlebrooks on 5/20/24.
//

import SwiftUI

extension View {
    func embededInScrollViewAgain(alignment: Alignment = .center) -> some View {
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


struct lotusPose: View {
    
    @Environment(\.colorScheme) var colorScheme

    
    var body: some View {

        ZStack {
            Color.ourPalete
                    .ignoresSafeArea()
            ScrollView {
                
                VStack {
                    }
                    Image("lotusCat")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 260, height: 250)

                        .padding(.top, 30)
                   
                Text("Lotus Pose")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .padding(.bottom, 15)
//                    .foregroundColor(.black)
                
                
                Text("""
        1. Sit on the floor with your legs extended straight in front of you.
        2. Bend your right knee and place your right foot on your left thigh, as close to your hip as possible, with the sole facing upward.
        3. Bend your left knee and place your left foot on your right thigh, as close to your hip as possible, with the sole of your foot facing upward.
        4. Rest your hands on your knees, palms facing up, and form a Gyan Mudra by touching your thumb and index finger together.
        5. Sit up tall, lengthening your spine and relaxing your shoulders.
        6. Breathe deeply and hold the pose for as long as comfortable.
        """)
                .multilineTextAlignment(.center)
                .fixedSize(horizontal: false, vertical: true)
//                .foregroundColor(.black)

                
//                .multilineTextAlignment(.center)
//                   .lineLimit(nil)
                
                Text("Don't forget to breathe!")
//                    .foregroundColor(.black)
                    .font(.caption)
                    .padding(.top, 15)
            }
            
        }

    }
}


#Preview {
    lotusPose()
}
