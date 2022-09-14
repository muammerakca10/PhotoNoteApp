//
//  Person.swift
//  PhotoNoteApp
//
//  Created by MAC on 9.09.2022.
//

import Foundation

class Person : NSObject, NSCoding {
    
    var name : String
    var image : String
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
    
    required init?(coder: NSCoder) {
        name = coder.decodeObject(forKey: "name") as? String ?? ""
        image = coder.decodeObject(forKey: "image") as? String ?? ""
    }
    
    func encode(with coder: NSCoder) {
        coder.encode(name, forKey: "name")
        coder.encode(image, forKey: "image")
    }
    
    
}
