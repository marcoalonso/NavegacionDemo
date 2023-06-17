//
//  OnChangeDemo.swift
//  NavegacionDemo
//
//  Created by Marco Alonso Rodriguez on 17/06/23.
//

import SwiftUI

struct OnChangeDemo: View {
    
    @State var contador = 0
    
    
    var body: some View {
        VStack {
            Text("Contador: \(contador)")
                .font(.title)
            
            Button {
                contador += 1
            } label: {
                Text("Sumar 1")
            }
        }
        .onChange(of: contador) { _ in
//            print("Contador: \(newValue)")
            print("OnChange hacer algo...")
        }

        
    }
}

struct OnChangeDemo_Previews: PreviewProvider {
    static var previews: some View {
        OnChangeDemo()
    }
}
