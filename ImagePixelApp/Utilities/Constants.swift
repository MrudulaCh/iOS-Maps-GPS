//
//  Constants.swift
//  ImagePixelApp
//
//  Created by Mrudula on 12/27/18.
//  Copyright © 2018 Mrudula. All rights reserved.
//

import Foundation

let apiKey = ""


func flickURL(forApiKey key: String, withAnnotation annotation: DropPin, andNumberOfPhotos number: Int) -> String {
    let url = "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(apiKey)&lat=\(annotation.coordinate.latitude)&lon=\(annotation.coordinate.longitude)&radius=1&radius_units=mi&per_page=\(number)&format=json&nojsoncallback=1"
    print(url)
    return url
}



