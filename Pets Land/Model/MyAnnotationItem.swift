//
//  MyAnnotationItem.swift
//  Pets Land
//
//  Created by Aldanah Alqbbani on 14/05/1444 AH.
//

import CoreLocation

struct MyAnnotationItem: Identifiable {
    let id = UUID()
    var name: String
    var description: String
    var coordinate: CLLocationCoordinate2D
}



