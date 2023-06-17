//
//  NavigationBarButton.swift
//  NavegacionDemo
//
//  Created by Marco Alonso Rodriguez on 17/06/23.
//

import SwiftUI

struct NavigationBarButton: View {
    
    @State var showNextView = false
    
    var body: some View {
        NavigationView {
            
            Text("NavigationBarButton")
                .navigationBarTitle("Navigation Bar")
                .navigationBarItems(leading: Button("Navegar") {
                    //Accion boton izq
                    showNextView = true
                }, trailing: Button(action: {
                    //Accion boton derecha
                    print("Hacer algo al pulsar el boton ...")
                }, label: {
                    Image(systemName: "plus")
                }))
            
                .sheet(isPresented: $showNextView) {
                    NextView()
                }
                .onAppear {
                    print("Apareció la vista")
                }
        }//NavigationView
    }//Body
}

struct NavigationBarButton_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarButton()
    }
}
