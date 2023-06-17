//
//  PantallaCompleta.swift
//  NavegacionDemo
//
//  Created by Marco Alonso Rodriguez on 17/06/23.
//

import SwiftUI

struct PantallaCompleta: View {
    
    @State var showFullScreen: Bool = false
    
    var body: some View {
        Button {
            showFullScreen = true
        } label: {
            Text("Mostrar pantalla completa")
                .font(.largeTitle)
                .padding(12)
                .foregroundColor(.orange)
                .background(.black)
                .cornerRadius(10)
        }
        .fullScreenCover(isPresented: $showFullScreen) {
            NextView()
        }
        .onDisappear {
            print("La vista desapareció!")
        }

    }
}

struct PantallaCompleta_Previews: PreviewProvider {
    static var previews: some View {
        PantallaCompleta()
    }
}
