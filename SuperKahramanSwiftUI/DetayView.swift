//
//  DetayView.swift
//  SuperKahramanSwiftUI
//
//  Created by Elif Özdemir on 5.04.2023.
//

import SwiftUI

struct DetayView: View {
    var secilenKahraman : SuperKahraman
    var body: some View {
        VStack{
            MapView(coordinate:
                        secilenKahraman.koordinatLokasyonu)
            .frame(height: UIScreen.main.bounds.height * 0.3)
            .edgesIgnoringSafeArea(.top)
            
            OzelGorselView(image:
                            Image(secilenKahraman.gorselIsmi))
                .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.3, alignment: .center)
                .offset(y: UIScreen.main.bounds.height * -0.25)
                .padding(.bottom, UIScreen.main.bounds.height * -0.10)
            
            VStack {
                HStack {
                    Text(secilenKahraman.isim)
                        .font(.title)
                        .foregroundColor(.blue)
                    
                    Spacer()
                    
                    Text(secilenKahraman.gercekIsim)
                        .font(.title)
                        .foregroundColor(.blue)
                }
                
                HStack{
                    Text(secilenKahraman.sehir).bold()
                    Spacer()
                    Text(secilenKahraman.meslek).bold()
                }
            }.padding()
                .offset(y: UIScreen.main.bounds.height * -0.2)
            
            Spacer()
        }
    }
}

struct DetayView_Previews: PreviewProvider {
    static var previews: some View {
        DetayView(secilenKahraman: spiderman)
    }
}
