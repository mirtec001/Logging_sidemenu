//
//  MainView.swift
//  Logging
//
//  Created by Pete Misik on 12/23/20.
//

import SwiftUI

struct MainView: View {
    
    @State var dark = false
    @State var show = false
    
    var body: some View {
        ZStack(alignment: .leading) {
            GeometryReader{ _ in
                VStack {
                    ZStack {
                        HStack {
                            Button (action: {
                                withAnimation(.default) {
                                    self.show.toggle()
                                }
                            }) {
                                Image("menu")
                                .resizable()
                                .frame(width: 25, height: 25)
                            }//:BUTTON - Menu
                            
                            Spacer()
                        
                        }//:HSTACK
                        Text("Home")
                    }//:ZSTACK
                    .padding()
                    .foregroundColor(.primary)
                    .overlay(Rectangle().stroke(Color.primary.opacity(0.1), lineWidth: 1).shadow(radius: 3).edgesIgnoringSafeArea(.top))
                    
                    Spacer()
                    
                    Text("Demo screen")
                    
                    Spacer()
                    
                }//: VSTACK
            }//: GEOMETRYREADER
            
            HStack {
            SideMenu(dark: self.$dark, show: self.$show)
                .preferredColorScheme(self.dark ? .dark : .light)
                .offset(x: self.show ? 0 : -UIScreen.main.bounds.width / 1.5)
                
                Spacer(minLength: 0)
            }//: HSTACK
            .background(Color.primary.opacity(self.show ? (self.dark ? 0.05 : 0.2) : 0).edgesIgnoringSafeArea(.all))
        }//: ZSTACK
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
