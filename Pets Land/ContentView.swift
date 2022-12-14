//
//  ContentView.swift
//  Pets Land
//
//  Created by Aldanah Alqbbani on 12/05/1444 AH.
//

import MapKit
import SwiftUI


struct ContentView: View{
    @StateObject private var viewModel = ContentViewModel()
    @State private var showingEditScreen = false
    @State var shop: Bool = false
    @State var clinc: Bool = false
    @State var servise: Bool = false
    @State var adopt: Bool = false
    var body: some View {
        VStack{
            NavigationView {
                ZStack{
                    Map(coordinateRegion: $viewModel.region,interactionModes: .all, showsUserLocation: true,
                        annotationItems: viewModel.annotationItems,
                        annotationContent: { pin in
                        MapAnnotation(coordinate: pin.coordinate,
                                      content: {
                            PinButtonView(pin: pin)
                        })
                    })
                    
                    .edgesIgnoringSafeArea(.bottom)
                    .accentColor(Color(.systemGreen))
                    .onAppear {
                        viewModel.checkIfLocationServicesIsEnabled()
                    }.navigationTitle("Pets Land")
                    
                    VStack{
                        ScrollView(.horizontal){
                            HStack{
                                Button(action :{
                                    viewModel.annotationItems = [MyAnnotationItem(name:"Apple Park",description: "Apple Inc. headquarters",coordinate: CLLocationCoordinate2D(latitude: 24.8114, longitude: 46.7013))]
                                    
                                    shop.toggle()
                                    clinc = false
                                    servise = false
                                    adopt = false
                                    
                                }
                                       , label: {
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 8, style: .continuous)
                                            .fill(Color(.gray))
                                            .frame(width: 134,height: 42)
                                            .cornerRadius(8)
                                        RoundedRectangle(cornerRadius: 7, style: .continuous)
                                            .fill(shop ? Color(red: 0.392, green: 0.646, blue: 0.463) : Color(red: 0.787, green: 0.877, blue: 0.754))
                                            .overlay{
                                                Text("Vets Shop")
                                                    .font(.body)
                                                    .fontWeight(shop ? .bold :.regular)
                                                    .foregroundColor(shop ? .white :.black)
                                                    .multilineTextAlignment(.center)
                                                
                                            }
                                            .frame(width: 132,height: 40)
                                    }
                                })
                                ///
                                Button(action :{
                                    clinc.toggle()
                                    shop = false
                                    servise = false
                                    adopt = false
                                    
                                } , label: {
                                    ZStack{
                                        
                                        RoundedRectangle(cornerRadius: 8, style: .continuous)
                                            .fill(Color(.gray))
                                            .frame(width: 134,height: 42)
                                            .cornerRadius(8)
                                        RoundedRectangle(cornerRadius: 7, style: .continuous)
                                            .fill(clinc ? Color(red: 0.392, green: 0.646, blue: 0.463) : Color(red: 0.787, green: 0.877, blue: 0.754))
                                            .overlay{
                                                Text("Vets Clinic")
                                                    .fontWeight(clinc ? .bold :.regular)
                                                    .foregroundColor(clinc ? .white :.black)
                                                    .multilineTextAlignment(.center)
                                                
                                            }
                                            .frame(width: 132,height: 40)
                                    }
                                })
                                
                                //
                                Button(action :{
                                    
                                    servise.toggle()
                                    shop = false
                                    clinc = false
                                    adopt = false
                                } , label: {
                                    ZStack{
                                        
                                        RoundedRectangle(cornerRadius: 8, style: .continuous)
                                            .fill(Color(.gray))
                                            .frame(width: 134,height: 42)
                                            .cornerRadius(8)
                                        RoundedRectangle(cornerRadius: 7, style: .continuous)
                                            .fill(servise ? Color(red: 0.392, green: 0.646, blue: 0.463) : Color(red: 0.787, green: 0.877, blue: 0.754))
                                            .overlay{
                                                Text("Vets Service")
                                                    .font(.body)
                                                    .fontWeight(servise ? .bold :.regular)
                                                    .foregroundColor(servise ? .white :.black)
                                                    .multilineTextAlignment(.center)
                                                
                                            }
                                        
                                            .frame(width: 132,height: 40)
                                    }
                                })
                                //
                                Button(action :{
                                    adopt.toggle()
                                    shop = false
                                    clinc = false
                                    servise = false
                                    //????????
                                } , label: {
                                    ZStack{
                                        
                                        RoundedRectangle(cornerRadius: 8, style: .continuous)
                                            .fill(Color(.gray))
                                            .frame(width: 134,height: 42)
                                            .cornerRadius(8)
                                        RoundedRectangle(cornerRadius: 7, style: .continuous)
                                            .fill(adopt ? Color(red: 0.392, green: 0.646, blue: 0.463) : Color(red: 0.787, green: 0.877, blue: 0.754))
                                            .overlay{
                                                Text("Adoption center")
                                                    .font(.body)
                                                    .fontWeight(adopt ? .bold :.regular)
                                                    .foregroundColor(adopt ? .white :.black)
                                                    .multilineTextAlignment(.center)
                                                
                                            }
                                        
                                            .frame(width: 132,height: 40)
                                    }
                                })
                                
                                
                            }.padding()
                        }
                        Spacer()
                    }
                    
                }
                
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}


struct PinButtonView: View {
    @State private var showingEditScreen = false
    @State var pin: MyAnnotationItem
    
    var body: some View {
        Button(action: {
            showingEditScreen.toggle()
        }) {
            Image(systemName: "mappin")
                .padding()
                .foregroundColor(.red)
                .font(.title)
        }
        .sheet(isPresented: $showingEditScreen,
               content: {
            EditView(pin: self.$pin)
                .presentationDetents([.large,.medium,.fraction(0.75)])
        })
    }
}

struct EditView: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var pin: MyAnnotationItem
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Place name", text: $pin.name)
                TextField("Description", text: $pin.description)
            }
            .navigationTitle("Edit place")
            .navigationBarItems(trailing: Button("Done") {
                self.presentationMode.wrappedValue.dismiss()
            })
        }
    }
}

