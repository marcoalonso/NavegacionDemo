//
//  NavViewNavLink.swift
//  NavegacionDemo
//
//  Created by Marco Alonso Rodriguez on 17/06/23.
//

import SwiftUI

struct NavViewNavLink: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: NextView()) {
                    Text("Go to next view")
                        .font(.system(size: 40))
                        .foregroundColor(.white)
                        .padding(12)
                        .background(.red)
                        .cornerRadius(12)
                        .shadow(radius: 15)
                        .padding(15)
                }
                
                Spacer()
                
                NavigationLink(destination: NextView()) {
                    Image(systemName: "house")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.red)
                        .shadow(radius: 12)
                }
                Spacer()
            }
            .navigationTitle("NavigationView")
        }
    }
}

struct NavViewNavLink_Previews: PreviewProvider {
    static var previews: some View {
        NavViewNavLink()
    }
}
