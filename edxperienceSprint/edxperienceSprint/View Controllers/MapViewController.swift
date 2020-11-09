//
//  MapViewController.swift
//  edxperienceSprint
//
//  Created by Zachary Thacker on 11/8/20.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    //Outlets
    @IBOutlet weak var mapView: MKMapView!
    //Properties
    private var userTrackingButton: MKUserTrackingButton!
    private let locationManager = CLLocationManager()
    //Lifecycle
    override func viewDidLoad() {
            super.viewDidLoad()
        // Authorization Request
            locationManager.requestWhenInUseAuthorization()
        //Set Up UI
            userTrackingButton = MKUserTrackingButton(mapView: mapView)
            userTrackingButton.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(userTrackingButton)
            NSLayoutConstraint.activate([
                userTrackingButton.leadingAnchor.constraint(equalTo: mapView.leadingAnchor, constant: 20),
                mapView.bottomAnchor.constraint(equalTo: userTrackingButton.bottomAnchor, constant: 20)
            ])
        }
    


}
