//
//  DriverAnnotation.swift
//  UberTutorial
//
//  Created by dj on 17/02/2020.
//  Copyright © 2020 DJ. All rights reserved.
//

import MapKit

class DriverAnnotation: NSObject, MKAnnotation {
    dynamic var coordinate: CLLocationCoordinate2D //dynamic = updating variable automatically 
    var uid: String
    
    init(uid: String, coordinate: CLLocationCoordinate2D) {
        self.uid = uid
        self.coordinate = coordinate
    }
    
    func updateAnnotationPosition(withCoordinate coordinate: CLLocationCoordinate2D){
        UIView.animate(withDuration: 0.2)
        {
            self.coordinate = coordinate
        }
    }
}
