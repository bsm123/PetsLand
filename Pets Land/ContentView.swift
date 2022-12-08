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
    
    var body: some View {
        
        VStack{
            NavigationView {
                ZStack{
                    Map(coordinateRegion: $viewModel.region, showsUserLocation: true)
                        .edgesIgnoringSafeArea(.bottom)
                        .accentColor(Color(.systemGreen))
                        .onAppear {
                            viewModel.checkIfLocationServicesIsEnabled()
                        }.navigationTitle("Pets Land")
                    
                    VStack{
                        ScrollView(.horizontal){
                            HStack{
                                Button(action :{
                                    
                                    //????????
                                } , label: {
                                    ZStack{
                                        
                                        RoundedRectangle(cornerRadius: 8, style: .continuous)
                                            .fill(Color(.gray))
                                            .frame(width: 134,height: 42)
                                            .cornerRadius(8)
                                        RoundedRectangle(cornerRadius: 7, style: .continuous)
                                            .fill(Color(red: 0.787, green: 0.877, blue: 0.754))
                                            .overlay{
                                                Text("Vets Shop")
                                                    .font(.body)
                                                    .fontWeight(.regular)
                                                    .foregroundColor(Color.black)
                                                .multilineTextAlignment(.center)}
                                        
                                            .frame(width: 132,height: 40)
                                    }
                                })
                                ///
                                Button(action :{
                                    
                                    //????????
                                } , label: {
                                    ZStack{
                                        
                                        RoundedRectangle(cornerRadius: 8, style: .continuous)
                                            .fill(Color(.gray))
                                            .frame(width: 134,height: 42)
                                            .cornerRadius(8)
                                        RoundedRectangle(cornerRadius: 7, style: .continuous)
                                            .fill(Color(red: 0.787, green: 0.877, blue: 0.754))
                                            .overlay{
                                                Text("Vets Clinic")
                                                    .font(.body)
                                                    .fontWeight(.regular)
                                                    .foregroundColor(Color.black)
                                                .multilineTextAlignment(.center)}
                                        
                                            .frame(width: 132,height: 40)
                                    }
                                })
                                
                                //
                                Button(action :{
                                    
                                    //????????
                                } , label: {
                                    ZStack{
                                        
                                        RoundedRectangle(cornerRadius: 8, style: .continuous)
                                            .fill(Color(.gray))
                                            .frame(width: 134,height: 42)
                                            .cornerRadius(8)
                                        RoundedRectangle(cornerRadius: 7, style: .continuous)
                                            .fill(Color(red: 0.787, green: 0.877, blue: 0.754))
                                            .overlay{
                                                Text("Vets Service")
                                                    .font(.body)
                                                    .fontWeight(.regular)
                                                    .foregroundColor(Color.black)
                                                .multilineTextAlignment(.center)}
                                        
                                            .frame(width: 132,height: 40)
                                    }
                                })
                                //
                                Button(action :{
                                    
                                    //????????
                                } , label: {
                                    ZStack{
                                        
                                        RoundedRectangle(cornerRadius: 8, style: .continuous)
                                            .fill(Color(.gray))
                                            .frame(width: 134,height: 42)
                                            .cornerRadius(8)
                                        RoundedRectangle(cornerRadius: 7, style: .continuous)
                                            .fill(Color(red: 0.787, green: 0.877, blue: 0.754))
                                            .overlay{
                                                Text("Adoption center")
                                                    .font(.body)
                                                    .fontWeight(.regular)
                                                    .foregroundColor(Color.black)
                                                .multilineTextAlignment(.center)}
                                        
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
