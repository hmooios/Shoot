//
//  Camera.swift
//  Shoot
//
//  Created by Hmoo Myat Theingi on 06/12/2023.
//

import Foundation

struct Camera:Identifiable {
    var id = UUID()
    var name:String
    var image:String
    var price:Int
}

var cameraLists = [
    Camera(name: "Kodak Pony 828", image: "camera1", price: 100),
    Camera(name: "Polaroid I-type", image: "camera2", price: 80),
    Camera(name: "Summicron", image: "camera3", price: 120),
    Camera(name: "Samsaung", image: "camera4", price: 70),
    Camera(name: "Omeha 8M", image: "camera5", price: 60),
    Camera(name: "Canon F-1", image: "camera6", price: 150),
    Camera(name: "Canon", image: "camera7", price: 90),
    Camera(name: "Pentax", image: "camera8", price: 110)
]
