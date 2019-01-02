//
//  DropPin.swift
//  ImagePixelApp
//
//  Created by Mrudula on 12/26/18.
//  Copyright © 2018 Mrudula. All rights reserved.
//

import UIKit
import MapKit

class DropPin : NSObject, MKAnnotation {
    dynamic var coordinate : CLLocationCoordinate2D
    var identifier : String
    
    init(coordinate: CLLocationCoordinate2D, identifier: String){
        self.coordinate = coordinate
        self.identifier = identifier
        super.init()
    }
}
