[<img src="https://about.mappls.com/images/mappls-b-logo.svg" height="80"/> </p>](https://www.mapmyindia.com/api)

# MapplsRasterCatalogue Plugin for iOS

## [Introduction](#Introduction)

`MapplsRasterCatalogue` is a plugin over Mappls's `rasterCatalogue APIs`. RasterCatalogue APIs gives the users the power to display, style, and edit the data which is archived in Mappls's Database and overlay it on the user created maps.

 - This is an easy & FREE to integrate DigitalSky Airspace zones layers widget by Mappls.
 - The drone airspace map is an interactive map of India that demarcates the yellow and red zones across the country.
 - The airspace map may be modified by authorised entities from time to time. Anyone planning to operate a drone should mandatorily check the latest airspace map for any changes in zone boundaries.
 - We're helping ANY website or app developer to easily integrate this information, for the benefit of your users and visitors.


## [Installation](#Installation)

To add a package dependency to your Xcode project, select File > Swift Packages > Add Package Dependency and enter its repository URL. See [Adding Package Dependencies to Your App](https://developer.apple.com/documentation/xcode/adding-package-dependencies-to-your-app).

### [Version History](#Version-History)

| Version | Dated | Description | 
| :---- | :---- | :---- |
| `2.0.0`| 10 Jun 2025 | - Updated minimum iOS deployment target to 13.0 <br> - Authentication and authorization mechanisms have been revised. |
| --- | --- | --- |
| `0.1.0` | 20 June 2022 | Initial version release. |

#### [Dependencies](#Dependencies)

This library depends upon several Mappls's own libraries. All dependent libraries will be automatically installed using CocoaPods.

Below are list of dependencies which are required to run this SDK:

- [MapplsAPICore](https://github.com/mappls-api/mappls-ios-sdk/docs/v1.0.0/MapplsAPICore.md)
- [MapplsAPIKit](https://github.com/mappls-api/mappls-ios-sdk/docs/v1.0.0/MapplsAPIKit.md)
- [MapplsMaps](https://github.com/mappls-api/mappls-ios-sdk/docs/v1.0.0/MapplsMap.md)

## [Authorization](#Authorization)

### [MapplsAPICore](#MapplsAPICore)
It is required to set MAPPLS's keys to use any MAPPL's SDK. Please see [here](MapplsAPICore.md) to achieve this.

## [Precap](#Precap)

### [RasterCatalogue Layer Types](#Geoanalytics-Layer-Types)

An enum `MapplsRasterCatalogueLayerType` can be used to get different types of layers. Below are different types which are available:

1.  `MapplsRasterCatalogueLayerTypeInternationalBoundary25KM`
2.  `MapplsRasterCatalogueLayerTypeAirport8To12KMYellow`
3.  `MapplsRasterCatalogueLayerTypeAirport5To8KM`
4.  `MapplsRasterCatalogueLayerTypeAirport0To5KM`

**Now that you’re all caught up with the features, let's get down right to them and look at how you can integrate our RasterCatalogue plugin to add data on your map in few simple steps.**

## [Initialization MapplsRasterCatalogue Plugin ](#Initialization-MapplsGeoanalyticsPlugin)

```swift
var rasterCataloguePlugin : MapplsRasterCataloguePlugin = MapplsRasterCataloguePlugin(mapView: mapView)
```

## [Use of RasterCatalogue API](#Use-of-RasterCatalogue-API)

Use instance of `MapplsRasterCataloguePlugin` to show response of RasterCatalogue API as Map Layers.

**For infomation about `RasterCatalogue API` go [here](https://about.mappls.com/api/advanced-maps/geoanalytics-web-js/geo-analytics-mapmyindia-js).**



#### [MapplsRasterCatalogueLayerOptions](#MapplsGeoanalyticsLayerRequest)

Below are parameters of `MapplsRasterCatalogueLayerOptions` class.

- **layerType** (mandatory): It is an enum of type `MapplsRasterCatalogueLayerType`. 

- **crossOrigin** (optional): It is of type `String`. For more info see [here](#MapplsGeoanalyticsGeobound).

- **transparent** (optional): It is  type `Bool`. its default value is `true`.

- **zIndex** (optional): It is of type `BOOL`. its default value is 0

### Step 2 - Adding RasterCatalogue layer on Map

A function `addRasterCatalogueLayer` available in `MapplsRasterCataloguePlugin` which accepts request of type `MapplsRasterCatalogueLayerOptions`.
Plugin internally consume that request to get response and plot layer on Map accordingly.

``` swift 
let request = MapplsRasterCatalogueLayerOptions(layerType: .airport5To8KM)
self.rasterCataloguePlugin.addRasterCatalogueLayer(request)
```

### Other Methods Available:

**1. Remove RasterCatalogue Layer**

`removeRasterCatalogueLayer` is a function which accepts request of type `MapplsRasterCatalogueLayerOptions` to remove related layer from map.

``` swift
let request = MapplsRasterCatalogueLayerOptions(layerType: .airport5To8KM)
geoanalyticsPlugin.removeRasterCatalogueLayer(layerRequestState))
```

<br><br><br>

## Our many happy customers:

![](https://www.mapmyindia.com/api/img/logos1/PhonePe.png)![](https://www.mapmyindia.com/api/img/logos1/Arya-Omnitalk.png)![](https://www.mapmyindia.com/api/img/logos1/delhivery.png)![](https://www.mapmyindia.com/api/img/logos1/hdfc.png)![](https://www.mapmyindia.com/api/img/logos1/TVS.png)![](https://www.mapmyindia.com/api/img/logos1/Paytm.png)![](https://www.mapmyindia.com/api/img/logos1/FastTrackz.png)![](https://www.mapmyindia.com/api/img/logos1/ICICI-Pru.png)![](https://www.mapmyindia.com/api/img/logos1/LeanBox.png)![](https://www.mapmyindia.com/api/img/logos1/MFS.png)![](https://www.mapmyindia.com/api/img/logos1/TTSL.png)![](https://www.mapmyindia.com/api/img/logos1/Novire.png)![](https://www.mapmyindia.com/api/img/logos1/OLX.png)![](https://www.mapmyindia.com/api/img/logos1/sun-telematics.png)![](https://www.mapmyindia.com/api/img/logos1/Sensel.png)![](https://www.mapmyindia.com/api/img/logos1/TATA-MOTORS.png)![](https://www.mapmyindia.com/api/img/logos1/Wipro.png)![](https://www.mapmyindia.com/api/img/logos1/Xamarin.png)

<br>

For any queries and support, please contact:

[<img src="https://mmi-api-team.s3.amazonaws.com/Mappls-SDKs/Resources/mappls-logo.png" height="40"/> </p>](https://about.mappls.com/api/)

Email us at [apisupport@mappls.com](mailto:apisupport@mappls.com)

![](https://www.mapmyindia.com/api/img/icons/support.png)
[Support](https://about.mappls.com/contact/)
Need support? contact us!

<br></br>

[<p align="center"> <img src="https://www.mapmyindia.com/api/img/icons/stack-overflow.png"/> ](https://stackoverflow.com/questions/tagged/mappls-api)[![](https://www.mapmyindia.com/api/img/icons/blog.png)](https://about.mappls.com/blog/)[![](https://www.mapmyindia.com/api/img/icons/gethub.png)](https://github.com/mappls-api)[<img src="https://mmi-api-team.s3.ap-south-1.amazonaws.com/API-Team/npm-logo.one-third%5B1%5D.png" height="40"/> </p>](https://www.npmjs.com/org/mapmyindia) 

[<p align="center"> <img src="https://www.mapmyindia.com/june-newsletter/icon4.png"/> ](https://www.facebook.com/Mapplsofficial)[![](https://www.mapmyindia.com/june-newsletter/icon2.png)](https://twitter.com/mappls)[![](https://www.mapmyindia.com/newsletter/2017/aug/llinkedin.png)](https://www.linkedin.com/company/mappls/)[![](https://www.mapmyindia.com/june-newsletter/icon3.png)](https://www.youtube.com/channel/UCAWvWsh-dZLLeUU7_J9HiOA)

<div align="center">@ Copyright 2020 CE Info Systems Pvt. Ltd. All Rights Reserved.</div>

<div align="center"> <a href="https://about.mappls.com/api/terms-&-conditions">Terms & Conditions</a> | <a href="https://www.mappls.com/about/privacy-policy">Privacy Policy</a> | <a href="https://www.mappls.com/pdf/mappls-sustainability-policy-healt-labour-rules-supplir-sustainability.pdf">Supplier Sustainability Policy</a> | <a href="https://www.mappls.com/pdf/Health-Safety-Management.pdf">Health & Safety Policy</a> | <a href="https://www.mappls.com/pdf/Environment-Sustainability-Policy-CSR-Report.pdf">Environmental Policy & CSR Report</a>

<div align="center">Customer Care: +91-9999333223</div>
