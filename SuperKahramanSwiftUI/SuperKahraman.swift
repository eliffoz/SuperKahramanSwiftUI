//
//  SuperKahraman.swift
//  SuperKahramanSwiftUI
//
//  Created by Elif Özdemir on 5.04.2023.
//

import Foundation
import SwiftUI
import CoreLocation

struct SuperKahraman : Identifiable {
    
    var id = UUID()
    var isim : String
    var gercekIsim :String
    var gorselIsmi : String
    var sehir : String
    var meslek : String
    var koordinat : Koordinat
    
    var koordinatLokasyonu : CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: koordinat.latitude, longitude: koordinat.longitude)
    }
    
   
    
}

struct Koordinat {
    var latitude : Double
    var longitude : Double
}

let batman = SuperKahraman(isim: "Batman", gercekIsim: "Bruce Wayne", gorselIsmi: "batman", sehir: "Gotham", meslek: "İş Adamı", koordinat: Koordinat(latitude: 41.8713679, longitude: -87.7669902))

let superman = SuperKahraman(isim: "Superman", gercekIsim: "Clark Kent", gorselIsmi: "superman", sehir: "Kansas", meslek: "Gazeteci", koordinat: Koordinat(latitude: 39.0865207, longitude: -94.7089592))

let spiderman = SuperKahraman(isim: "Spiderman", gercekIsim: "Peter Parker", gorselIsmi: "spiderman", sehir: "New York", meslek: "Fotoğrafçı", koordinat: Koordinat(latitude: 40.7160119, longitude: -74.0524729))

let ironman = SuperKahraman(isim: "Iron Man", gercekIsim: "Tony Stark", gorselIsmi: "ironman", sehir: "Los Angeles", meslek: "İş Adamı", koordinat: Koordinat(latitude: 33.8003309, longitude: -118.2261494))

let superKahramanDizisi = [batman,superman,spiderman,ironman]
