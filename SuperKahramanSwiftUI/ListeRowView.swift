//
//  ListeRowView.swift
//  SuperKahramanSwiftUI
//
//  Created by Elif Özdemir on 6.04.2023.
//

import SwiftUI

struct ListeRowView: View {
    
    var superKahraman : SuperKahraman
    var body: some View {
        HStack{
            Image(superKahraman.gorselIsmi)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 100, alignment: .leading)
                .clipShape(Circle())
            Spacer()
            VStack{
                Text(superKahraman.isim).font(.title)
                Text(superKahraman.gercekIsim).font(.title)
            }
            Spacer()
        }
    }
}

struct ListeRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListeRowView(superKahraman: batman)
    }
}
