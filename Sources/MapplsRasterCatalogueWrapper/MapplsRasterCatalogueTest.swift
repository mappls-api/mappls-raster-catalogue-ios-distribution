import MapplsAPICore
import MapplsAPIKit
import MapplsMap
import MapplsRasterCatalogue

class MapplsRasterCatalogueTest: UIViewController {
    var mapView: MapplsMapView!
    var plugin: MapplsRasterCataloguePlugin!
    
    func setupMapView() {
        mapView = MapplsMapView()
        mapView.delegate = self
        mapView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(mapView)
        
        // To enable user location
        mapView.showsUserLocation = true
        
        
        mapView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        mapView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        mapView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        mapView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        plugin = MapplsRasterCataloguePlugin(mapView: mapView)
    }
    
    
    func addRasterLayer() {
        let request = MapplsRasterCatalogueLayerOptions(layerType: .airport5To8KM)
        self.plugin.addRasterCatalogueLayer(request)
    }
    
    // To set map center
    func setMapCenter() {
        let coordinate = CLLocationCoordinate2D(latitude: 28.98, longitude: 77.324)
        self.mapView.setCenter(coordinate, zoomLevel: 14, animated: true)
    }
    
    
    func setMapCamera() {
        let camera = MGLMapCamera(lookingAtCenterMapplsPin: "mmi000", acrossDistance: 200, pitch: 30, heading: 0)
        self.mapView.setCamera(camera, animated: true)
    }
    
    
}


extension MapplsRasterCatalogueTest: MapplsMapViewDelegate {
    
    func mapView(_ mapView: MGLMapView, didFinishLoading style: MGLStyle) {
        addRasterLayer()
    }
}
