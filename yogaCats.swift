//
//  navigation.swift
//  catRelaxtion
//
//  Created by tamera middlebrooks on 4/30/24.
//

import SwiftUI

//extension View {
//    @available(iOS 14, *)
//    func navigationBarTitleColor(_ color: Color) -> some View {
//        let uiColor = UIColor(color)
//        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: uiColor ]
//        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: uiColor ]
//        return self
//    }
//}


extension View {
    func yogaCatEmbedInScrollView(alignment: Alignment = .center) -> some View {
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

struct yogaCatView: View {
    
//    @Environment(\.colorScheme) var colorScheme

    
    var body: some View {
        NavigationView {
            
            ZStack {
                Color.ourPalete
                    .ignoresSafeArea()
                
                
                VStack(spacing: 20) {
        Text("Cat Yoga")
                        .font(.custom("Sparky Stones Regular", size: 28, relativeTo: .largeTitle))
                    HStack(spacing: 20) {
                        NavigationLink(destination: flexibleCat()) {
                            NavSquares(imageName: "flexibleCat", text: "Upright Seated Angle")
                        }
                        
                        NavigationLink(destination: trianglePose()) {
                            NavSquares(imageName: "trianglePoseCat", text: "Triangle Pose")

                        }
                    }
                    
                    HStack(spacing: 20) {
                        NavigationLink(destination: lotusPose()) {
                            NavSquares(imageName: "lotusCat", text: "Lotus Pose")
                        }
                        
                        NavigationLink(destination: RelaxingScenery()) {
                            NavSquares(imageName: "relaxCat", text: "Relax-a-Cat")
                        }
                    }
                    
                    HStack(spacing: 20) {
                        NavigationLink(destination: RelaxingScenery()) {
                            NavSquares(imageName: "comedyCat", text: "Comedy Cats")
                        }
                        
                        NavigationLink(destination: RelaxingScenery()) {
                            NavSquares(imageName: "relaxCat", text: "Relax-a-Cat")
                        }
                    }
                    
                }
                .padding(.bottom, 80)
            }
            
//            .navigationBarTitleColor(.black)
            
        }
    }
}

struct NavSquares: View {
//    @State private var squareIsClicked = false

    
    
    var imageName: String
    var text: String
    
    
    @ViewBuilder var body: some View {
        
        VStack {
  
                Image(imageName)
                    .resizable()

                    .scaledToFit()

                    .frame(width: 160, height: 150)
                    
                    .background(
                        
                        RoundedRectangle(cornerRadius: 10)
                        
                        .tint(.paletePink)
                    )
            
                Text(text)
            
                .font(.custom("Sparky Stones Regular",
                              size: 20
                              ))
                    .foregroundColor(.black)
//                    .font(.title3)
    
            }
        }

    
}
#Preview {
    yogaCatView()
}
