//
//  Resources.swift
//  Pets Land
//
//  Created by Badria Sulaiman on 21/05/1444 AH.
//

import Foundation
import SwiftUI
import MapKit

//struct OnBoardingStep {
//    let image: String
//    let title: String
//    let title2:String
//    let description: String
//}
//private let onBoardingSteps = [
//    OnBoardingStep(image: "Pet1", title: "Sola 1", title2: "Abyssinuan Cat 1", description: "Riyadh Shalter ,Riyadh 1"),
//    OnBoardingStep(image: "Pet2", title: "Sola 2",title2: "Abyssinuan Cat 2", description: "Riyadh Shalter ,Riyadh 2"),
//    OnBoardingStep(image: "Pet3", title: "Sola 3",title2: "Abyssinuan Cat 3", description: "Riyadh Shalter ,Riyadh 3")]

/*
// Buttons Style
struct CustomButtonStyle: ButtonStyle {
        func makeBody(configuration: Configuration) -> some View {
            configuration.label
                .padding(30) // *make it thinner*
                .frame(maxWidth: .infinity) // expand horizontally
                .foregroundColor(.green)
                .background(
                    Rectangle()
                       .stroke(Color.green, lineWidth: 4)
                        .background(Color.white) // *change the button background color to white*
                        .cornerRadius(12)
                )
                .padding(.horizontal, 10) // *margin of 10px on each side*
                .opacity(configuration.isPressed ? 0.7 : 1)
        }
    }
// Buttons Style



struct ServicesView: View {
    @State private var currentStep = 0
    
    @StateObject private var viewModel = ContentViewModel()
    var body: some View {
 
        
        
        VStack{
            NavigationView {
                VStack{
                    NavigationView{
                        VStack {
                            }.navigationTitle("Services")
                                }
                    ZStack{
                        Map(coordinateRegion: $viewModel.region,interactionModes: .all, showsUserLocation: true,
                            annotationItems: viewModel.annotationItems,
                            annotationContent: { pin in
                            MapAnnotation(coordinate: pin.coordinate,
                                          content: {
                                PinButtonView(pin: pin)
                            })
                        })
                        .cornerRadius(12)
                        
                        .edgesIgnoringSafeArea(.bottom)
                        .accentColor(Color(.systemGreen))
                        .onAppear {
                            viewModel.checkIfLocationServicesIsEnabled()
                        }.navigationTitle("Pets Land")
                        
                        
                    }.frame(height: 150)
                        .padding()
                    
                    
NavigationView{
    VStack {
        
        
        NavigationView{
                  ZStack{
                      Color(.white).ignoresSafeArea().colorMultiply(Color(red: 0.424, green: 0.605, blue: 0.589))
                      Image("background").resizable().padding(.bottom, 120.0).ignoresSafeArea()
                      VStack {
                          
                          TabView(selection: $currentStep){
                              ForEach(0..<onBoardingSteps.count, id: \.self){ it in
                                  VStack(alignment:.leading){
                                      
                                      Image(onBoardingSteps[it].image)
                                          .resizable().padding().frame(width: 70, height: 50)
                                          .position(x: 195, y: 220)
                                      
                                      Text(onBoardingSteps[it].title)
                                          .font(.largeTitle)
                                          .fontWeight(.black)
                                          .foregroundColor(Color(red: 0.869, green: 0.356, blue: 0.427))
                                          .multilineTextAlignment(.leading)
                                          .position(x: 130, y: 230)
                                      
                                      Text(onBoardingSteps[it].title2)
                                          .font(.largeTitle)
                                          .fontWeight(.black)
                                          .foregroundColor(Color(red: 0.441, green: 0.617, blue: 0.605))
                                          .multilineTextAlignment(.leading).position(x: 110, y:80)
                                      HStack{
                                          ForEach(0..<onBoardingSteps.count, id: \.self){ it in
                                              if it == currentStep{
                                                  Circle()
                                                      .frame(width: 10, height: 10)
                                                      .cornerRadius(10)
                                                      .foregroundColor(Color(red: 0.869, green: 0.356, blue: 0.427))
                                              }
                                              
                                              else{
                                                  Circle().frame(width: 10, height: 10)
                                                      .foregroundColor(Color(red: 0.682, green: 0.682, blue: 0.695))
                                              }
                                          }
                                          
                                      }
//                                      .padding(.leading, 170.0)
                                      Text(onBoardingSteps[it].description)
                                          .font(.body)
                                          .fontWeight(.semibold)
                                          .foregroundColor(Color(red: 0.6, green: 0.6, blue: 0.6))
                                          .multilineTextAlignment(.leading)
                                          .padding(.leading, 0.0)
                                          .position(x: 164, y:-80)
                                      
                                  }
                                  .tag(it)
                              }
                          }
                          .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                      }
                      NavigationLink(destination:{
                      //    ContentViewLog()
                          
                          
                      }, label: {
                          Text("Let's Start").font(.title).foregroundColor(Color(red: 0.869, green: 0.356, blue: 0.427)).frame(width:326, height:73).cornerRadius(16).border(Color(red: 0.424, green: 0.605, blue: 0.589), width:1)
                          
                      }) .frame(width:326, height:73 ).background(.white).cornerRadius(16).position(x: 190, y:680)
                                  }
              }
          
                     }.navigationTitle("Adoption Opportunity")
            }

NavigationView{
    VStack {
                            
            }.navigationTitle("Service Provider?")
                                }
                
HStack {
            Button("Sign In") {
            print("click")}
.buttonStyle(CustomButtonStyle())
            Button("Sign Up") {
            print("click")}
.buttonStyle(CustomButtonStyle())
}
  
                }
            }
        }
    }
}

 struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ServicesView()
    }
}




   Button(action: {}) {
                          Label("Sign In", systemImage: "40")
                                        }
                      Button(action: {}) {
                          Label("Sign Up", systemImage: "120")
                                                        }
                    */

                 /* HStack{
              Button {
                  //code
              } label: {
                  ZStack{
                      Rectangle()
                      //green
                      Rectangle()
                          //white
                      VStack{
                          Text("Sign Up")
                          //image
                      }
                  }.frame(width: 100,height: 50)
                  
              }
              Button {
                  //code
              } label: {
                  Text("Sign In")
              }
      
          }
*/

