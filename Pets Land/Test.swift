//
//  Test.swift
//  Pets Land
//
//  Created by Badria Sulaiman on 24/05/1444 AH.
//

import Foundation
import SwiftUI
import MapKit

struct Test: View {
    @StateObject var viewModel = ContentViewModel()
    @State private var currentStep = 0
    
    var body: some View {
        VStack(){
            NavigationView(){
                VStack(alignment: .leading){
                    Text("Services")
                        .font(.title)
                        .bold()
                        .foregroundColor(Color(red: 0.282, green: 0.282, blue: 0.291))
                    Button(action :{
                        
                        
                        
                    }
                           , label: {
                        ZStack(alignment: .leading){
                            
                            Map(coordinateRegion: $viewModel.region,
                                interactionModes: .all)
                            .cornerRadius(12)
                            .edgesIgnoringSafeArea(.bottom)
                            .accentColor(Color(.systemGreen))
                            .frame(height: 150)
                            .shadow(color: Color(red: 0.825, green: 0.921, blue: 0.793), radius: 8)
                            
                            RoundedRectangle(cornerRadius: 11, style: .continuous)
                                .offset(x:1,y:50)
                                .frame(width: 360,height: 50)
                                .foregroundColor(Color(red: 0.496, green: 0.708, blue: 0.535))
                                .overlay(){
                                    Text("Click on the map to explore pets related locations.")
                                        .font(.subheadline)
                                        .foregroundColor(Color.white)
                                        .offset(x:2,y:50)
                                }
                        }})
                    Spacer()
                    
                    Text("Adoption Opportunity")
                        .font(.title)
                        .bold()
                        .foregroundColor(Color(red: 0.282, green: 0.282, blue: 0.291))
                    Spacer()
                    Spacer()
                    Spacer()
                    
                    Text("Service Provider?")
                        .font(.title)
                        .bold()
                        .foregroundColor(Color(red: 0.282, green: 0.282, blue: 0.291))
                    HStack{
                        Button(action :{
                            
                            
                            
                        }
                               , label: {
                            ZStack(){
                                
                                RoundedRectangle(cornerRadius: 11, style: .continuous)
                                    .fill(Color(red: 0.825, green: 0.921, blue: 0.793))
                                    .frame(width: 165,height: 120)
                                    .shadow(color: Color(red: 0.825, green: 0.921, blue: 0.793), radius: 2)
                                ZStack{
                                    RoundedRectangle(cornerRadius: 8, style: .continuous)
                                        .fill(.white)
                                        .frame(width: 160,height: 115)
                                        .overlay{
                                            VStack{
                                                Image("SignIn")
                                                    .resizable()
                                                    .frame(width: 36,height: 52)
                                                Text("SignIn")
                                                    .foregroundColor(Color(red: 0.392, green: 0.646, blue: 0.463))
                                                //
                                            }
                                            
                                        }
                                    
                                }.padding()
                            }
                        })
                        
                        Button(action :{
                            
                            
                            
                        }
                               , label: {
                            ZStack(){
                                RoundedRectangle(cornerRadius: 11, style: .continuous)
                                    .fill(Color(red: 0.825, green: 0.921, blue: 0.793))
                                    .frame(width: 165,height: 120)
                                    .shadow(color: Color(red: 0.825, green: 0.921, blue: 0.793), radius: 2)
                                ZStack{
                                    RoundedRectangle(cornerRadius: 8, style: .continuous)
                                        .fill(.white)
                                        .frame(width: 160,height: 115)
                                        .overlay{
                                            VStack{
                                                Image("SignUp")
                                                    .resizable()
                                                    .frame(width: 36,height: 52)
                                                Text("SignUp")
                                                    .foregroundColor(Color(red: 0.392, green: 0.646, blue: 0.463))
                                                //
                                            }
                                            
                                        }
                                    
                                }
                            }
                        })
                    }
                    
                }.padding()
                
                .navigationTitle("Pets Land")
            }
            
            
        }
//        .padding()
    }
    
}
    
    struct Test_Previews: PreviewProvider {
        static var previews: some View {
            Test()
        }
    }

