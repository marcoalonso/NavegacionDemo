//
//  NextView.swift
//  NavegacionDemo
//
//  Created by Marco Alonso Rodriguez on 17/06/23.
//

import SwiftUI

struct NextView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        VStack(spacing: 30.0) {
            Text("NextView")
                .font(.title)
                .bold()
            
            Image(systemName: "house")
                .resizable()
                .frame(width: 300, height: 200)
            
            Button("Regresar") {
                self.presentationMode.wrappedValue.dismiss()
            }
            .font(.title)
            .frame(width: 300, height: 50)
            .foregroundColor(.white)
            .background(Color.red)
            .cornerRadius(12)
            
            Spacer()
            
        }
        .padding(.top, 50)
    }
}

struct NextView_Previews: PreviewProvider {
    static var previews: some View {
        NextView()
    }
}
