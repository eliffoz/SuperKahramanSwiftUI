//
//  ContentView.swift
//  SuperKahramanSwiftUI
//
//  Created by Elif Özdemir on 5.04.2023.
//

import SwiftUI

struct ListeView: View {
    var body: some View {
        NavigationView {
            List(superKahramanDizisi) { superKahraman in
                NavigationLink(
                    destination: DetayView(secilenKahraman: superKahraman),
                               label: {
                    ListeRowView(superKahraman: superKahraman)
                    })
            }.navigationTitle(Text("SuperKahraman Kitabı"))
                               
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ListeView()
    }
}
