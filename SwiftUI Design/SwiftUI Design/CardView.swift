//
//  CardView.swift
//  SwiftUI Design
//
//  Created by Belal on 30/5/22.
//


import Foundation
import SwiftUI

struct CardView: View {
    
    @State var isSelected: Bool = false
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack{
                Spacer()
                Image("card")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                    .frame(width: 80 , height: 80)
                    .cornerRadius(40)
                    .foregroundColor(isSelected ? .white : .black)
            }
            Text("Blance")
                .foregroundColor(isSelected ? Color.white : Color.black)
            HStack{
                Text("USD")
                    .foregroundColor(isSelected ? .white : .black)
                Text("$178,899878")
                    .foregroundColor(isSelected ? .white : .black)
                    .font(.headline.bold())
                }
            Spacer()
            Text("**** **** **** 1789")
                .foregroundColor(isSelected ? .white : .black)
             
            
           
            
            
            
        }
        .padding(10)
        .frame(width: 180, height: 180)
        .background(Color(isSelected ? .blue : .white))
        .cornerRadius(20)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            CardView(isSelected: true)
                .body.previewLayout(.sizeThatFits)
            
            CardView(isSelected: false)
                .body.previewLayout(.sizeThatFits)
        }
    }
}
