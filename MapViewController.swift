//
//  MapViewController.swift
//  happee
//
//  Created by Chau P on 9/11/16.
//  Copyright © 2016 ChauPham. All rights reserved.
//

import Foundation
import Mapbox
import MapKit
import UIKit

class MapViewController : UIViewController {
        override func viewDidLoad() {
        super.viewDidLoad()
        //mapView?.mapType = .Normal
        mapView?.userTrackingMode = .Follow
    }
    
}
