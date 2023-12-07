//
//  CameraManager.swift
//  Shoot
//
//  Created by Hmoo Myat Theingi on 07/12/2023.
//

import Foundation

class CameraManager:ObservableObject{
    
    @Published private(set) var cameras:[Camera] = []
    @Published private(set) var total:Int = 0
    
    var fileURL:URL{
       let directory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        return directory.appendingPathComponent("camera.json")
    }
    
    init(){
        loadCamera()
    }
    
    func saveCamera(){
        do {
            let data = try JSONEncoder().encode(cameras)
            try data.write(to: fileURL)
        } catch let error {
            print("Error saving cameras : \(error)")
        }
    }
    
    func loadCamera(){
        do {
            let data = try Data(contentsOf: fileURL)
            cameras = try JSONDecoder().decode([Camera].self, from: data)
            updateTotal()
        } catch let error {
            print("Error saving cameras : \(error)")
        }
    }
    
    func addCamera(camera:Camera){
        cameras.append(camera)
        total+=camera.price
        saveCamera()
    }
    func removeCamera(camera:Camera){
        cameras = cameras.filter{$0.id != camera.id}
        total-=camera.price
        saveCamera()
    }
    
    private func updateTotal() {
           total = cameras.reduce(0) { $0 + $1.price }
       }
    

}
