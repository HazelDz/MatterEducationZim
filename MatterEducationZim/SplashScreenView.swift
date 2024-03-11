//
//  SplashScreenView.swift
//  MatterEducationZim
//
//  Created by admin on 11/3/2024.
//

import SwiftUI





struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    var body: some View {
        if isActive{
            ContentView()
        } else {
            VStack{
                VStack{
                    Image("matterlogo")
                        .font(.system(size: 180))
                     //   .foregroundColor(.red)
                    Text("M . E . Z")
                        .font(Font.custom("Arial-Bold" , size:50))
                        .foregroundColor(.black)
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration:  1.2)){
                        self.size = 0.9
                        self.opacity = 1.0

                    }
                }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now () + 2.0) {
                    withAnimation {
                        self.isActive = true
                    }
                    //self.isActive = true
                }
            }
        }
    }
}
        struct SplashScreenView_Previews: PreviewProvider{
            static var previews: some View {
                SplashScreenView()
            }
        }



