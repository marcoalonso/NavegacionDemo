//
//  SwiftUIView.swift
//  NavegacionDemo
//
//  Created by Marco Alonso Rodriguez on 17/06/23.
//

import SwiftUI

struct TabViewDemo: View {
    var body: some View {
        TabView {
           NavViewNavLink()
                .tabItem {
                    Label("NavigationView", systemImage: "arrowshape.backward")
                }
            
            PantallaCompleta()
                 .tabItem {
                     Label("FullScreen", systemImage: "square.fill")
                 }
            
            VistaModal()
                 .tabItem {
                     Label("VistaModal", systemImage: "square.and.arrow.up")
                 }
            
            NavigationBarButton()
                 .tabItem {
                     Label("NavigationBarButton", systemImage: "rectangle.portrait.and.arrow.forward")
                 }
            
            OnChangeDemo()
                 .tabItem {
                     Label("OnChangeDemo", systemImage: "house")
                 }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        TabViewDemo()
    }
}
