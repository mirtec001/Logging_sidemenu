//
//  SideMenu.swift
//  Logging
//
//  Created by Pete Misik on 12/23/20.
//

import Foundation
import SwiftUI

struct SideMenu: View {
//    let width: CGFloat
//    let isOpen: Bool
//    let menuClose: () -> Void
    
    @Binding var dark : Bool
    @Binding var show : Bool
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    withAnimation(.default) {
                        self.show.toggle()
                    }
                }) {
                    Image("back")
                    .resizable()
                    .frame(width: 12, height: 20)
                }
                
                Spacer()
            }//:HSTACK - back button
            .padding(.top)
            .padding(.bottom, 25)
            VStack {
                Text("Overivew")
            }//:VSTACK
            .padding(.top, 25)
            HStack(spacing: 22) {
                Image(systemName: "moon.fill")
                    .font(.title)
                 Text("Dark Mode")
                
                Spacer()
                
                Button(action: {
                    self.dark.toggle()
                    UIApplication.shared.windows.first?.rootViewController?.view.overrideUserInterfaceStyle = self.dark ? .dark : .light
                }) {
                    Image("off")
                        .font(.title)
                        .rotationEffect(.init(degrees: self.dark ? 180 : 0))
                }
            }//:HSTACK - Dark mode button
            .padding(.top, 25)

            Group {
                
                Button(action: {
                    
                }) {
                    HStack(spacing: 22){
                        Text("MISSION DATA")
                    } //:HSTACK - MISSION DATA
                }
                .padding(.top, 25)
                
                Button(action: {
                    
                }) {
                    HStack(spacing: 22){
                        Text("AIRCREW LIST")
                    } //:HSTACK - AIRCREW LIST
                }
                .padding(.top, 25)
                Button(action: {
                    
                }) {
                    HStack(spacing: 22){
                        Text("AIRCREW DATA")
                    } //:HSTACK - AIRCREW DATA
                }
                .padding(.top, 25)
                
                Spacer()
                
                Text("DAYS")
                
                // Need to run array generator here to build the buttons.
                
            }//:GROUP - SIDE MENU BUTTONS
            
            Spacer()
            
        }//:VSTACK
        .foregroundColor(.primary)
        .padding(.top, 25)
        .padding(.horizontal, 20)
        .frame(width: UIScreen.main.bounds.width / 2.5)
        .background((self.dark ? Color.black : Color.white).edgesIgnoringSafeArea(.all))
        .overlay(Rectangle().stroke(Color.primary.opacity(0.2), lineWidth: 2).shadow(radius: 3).edgesIgnoringSafeArea(.all))
    }
}
