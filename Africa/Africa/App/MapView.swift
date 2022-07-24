//
//  MapView.swift
//  Africa
//
//  Created by 野中淳 on 2022/07/10.
//

import SwiftUI
import MapKit
import AVFAudio

struct MapView: View {
    //MARK: - property
    
    @State private var region:MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        return mapRegion
    }()
    
    let locations:[NationalParkLocation] = Bundle.main.decode("locations.json")
    
    //MARK: - body
    
    var body: some View {
        //MARK: - no1 basic map
        //Map(coordinateRegion: $region)
        
        //MARK: - No2 Advanced Map
        Map(coordinateRegion: $region, annotationItems: locations) { item in
            //MARK: - A (PIN)
            //MapPin(coordinate: item.location,tint: .accentColor)
            //MARK: - B Marker New Style
            //MapMarker(coordinate: item.location, tint: .accentColor)
            //MARK: - C CustouAnnotation
//            MapAnnotation(coordinate: item.location) {
//                Image("logo")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width:32,height: 32)
//            }//Anotation
            //MARK: - CustomAnnotation
            MapAnnotation(coordinate: item.location) {
                MapAnnotaionView(location: item)
            }
        }//Map
        .overlay(
            HStack(alignment: .center, spacing: 12) {
                Image("compass")
                    .resizable()
                    .scaledToFit()
                .frame(width: 48, height: 48, alignment: .center)
                VStack(alignment: .leading, spacing: 3) {
                    HStack{
                        Text("Latitude")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.latitude)")
                            .font(.footnote)
                            .foregroundColor(.white)

                    }
                    HStack{
                        Text("Longitude")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.longitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }
                    
                    Divider()
                    
                }
            }//HStack
                .padding(.vertical,12)
                .padding(.horizontal,16)
                .background(
                    Color.black
                        .cornerRadius(8)
                        .opacity(0.6)
                )
                .padding()
            ,alignment: .top
        )
        
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
