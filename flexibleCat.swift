//
//  flexibleCat.swift
//  catRelaxtion
//
//  Created by tamera middlebrooks on 5/17/24.
//

import SwiftUI

extension View {
    func embededInScrollView(alignment: Alignment = .center) -> some View {
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


struct flexibleCat: View {
    
    @Environment(\.colorScheme) var colorScheme

    
    var body: some View {

        ZStack {
            Color.ourPalete
                    .ignoresSafeArea()
            ScrollView {
                
                VStack {
                    }
                    Image("flexibleCat")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 260, height: 250)

                        .padding(.top, 30)
                   
                Text("Upright Seated Angle Pose")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .padding(.bottom, 15)
//                    .foregroundColor(.black)
                
                
                Text("""
        1. Sit on the floor with your legs extended straight in front of you.
        2. Open your legs wide apart, forming a V shape.
        3. Flex your feet, pointing your toes up toward the ceiling.
        4. Reach your hands to hold your big toes.
        5. Inhale and sit up tall, lengthening your spine.
        6. Exhale, lean forward gently from your hips, keeping your back straight (go as far as you can without curving your back, comfort is key!).
        7. Hold the pose for a few deep breaths.
        8. To come out, inhale and gently lift your torso back up, bringing your legs together.
        
        """)
.multilineTextAlignment(.center)
 .fixedSize(horizontal: false, vertical: true)
//   .foregroundColor(.black)
             
                Text("Don't forget to breathe!")
//                    .foregroundColor(.black)
                    .font(.caption)
                    .padding(.top, 15)
//                       .lineLimit(nil)
            }
            
        }

    }
}

#Preview {
    flexibleCat()
}
