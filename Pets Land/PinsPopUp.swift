//
//  PinsPopUp.swift
//  Pets Land
//
//  Created by Aldanah Alqbbani on 18/05/1444 AH.
//

import SwiftUI

struct PinsPopUp: View{
    var body: some View {
        HStack(alignment: .bottom, spacing: 15){
            VStack(alignment: .leading,spacing: 16) {
                imageSection
                titleSection
            }
            VStack(spacing: 8){
                learnMoreButton
                nextButton
            }
        }
        .padding(20)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(.ultraThinMaterial)
                .offset(y: 65)
        )
        .cornerRadius(10)
    }
}
    struct PinsPopUp_Preview: PreviewProvider{
        static var previews: some View {
            ZStack {
                Color.black.ignoresSafeArea()
                PinsPopUp()
                    
                
            }
           
        }
    }


extension PinsPopUp{
    private var imageSection: some View {
        ZStack {
            Image("imageName")
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .cornerRadius(10)

        }
        .padding(6)
        .background(Color.white)
        .cornerRadius(10)

    }
    private var titleSection: some View {
        VStack(alignment: .leading, spacing: 4){
            Text("Animal Land ")
                .font(.title2)
                .fontWeight(.bold)
            Text("Riyadh ,Saudi Arabia")
                .font(.subheadline)
        }
        
    }
    
    private var learnMoreButton: some View {
        Button {
            
            ////
        } label: {
            Text ("Learn more")
                .font(.headline)
                .frame(width: 100, height: 35)
                
        }
        .buttonStyle(.borderedProminent)
    }
    
    private var nextButton: some View {
        Button {
            ///
            
        } label: {
            Text("Next")
                .font (.headline)
                .frame (width: 100, height: 35)
        } .buttonStyle(.bordered)
    }
    
}
