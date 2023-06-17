//
//  VistaModal.swift
//  NavegacionDemo
//
//  Created by Marco Alonso Rodriguez on 17/06/23.
//

import SwiftUI

struct VistaModal: View {
    
    @State var showModal: Bool = false
    
    var body: some View {
        VStack {
            Button {
                showModal = true
            } label: {
                Text("Navegar con vista modal")
                    .font(.largeTitle)
                    .padding(12)
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(10)
            }
        }
        .sheet(isPresented: $showModal) {
            NextView()
        }
    }
}

struct VistaModal_Previews: PreviewProvider {
    static var previews: some View {
        VistaModal()
    }
}
