//
//  ContentView.swift
//  StackView_SwiftUI
//
//  Created by Alan Ulises on 23/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        VStack{ //Container
            VStack(alignment: .center ){ //Labels
                Text("Banderas del mundo")
                    .foregroundColor(.cyan)
                    .font(.title)
                Text("La colección completa")
            } //: Labels
            VStack (){ //Flags
                HStack{
                    Image("AL-Albania-Flag")
                        .resizable()
                        .aspectRatio(CGSize(width: 100, height: 77), contentMode: .fit)
                    Image("AZ-Azerbaijan")
                        .resizable()
                        .aspectRatio(CGSize(width: 100, height: 77), contentMode: .fit)
                    Image("CN-China-Flag")
                        .resizable()
                        .aspectRatio(CGSize(width: 100, height: 77), contentMode: .fit)
                }
                HStack{
                    Image("ES-España")
                        .resizable()
                        .aspectRatio(CGSize(width: 100, height: 77), contentMode: .fit)
                    Image("IT-Italy")
                        .resizable()
                        .aspectRatio(CGSize(width: 100, height: 77), contentMode: .fit)
                    Image("MA-Morocco-Flag")
                        .resizable()
                        .aspectRatio(CGSize(width: 100, height: 77), contentMode: .fit)
                }
                HStack{
                    Image("MX-Mexico-Flag")
                        .resizable()
                        .aspectRatio(CGSize(width: 100, height: 77), contentMode: .fit)
                    Image("SE-Sweden-Flag")
                        .resizable()
                        .aspectRatio(CGSize(width: 100, height: 77), contentMode: .fit)
                    Image("UY-Uruguay-Flag")
                        .resizable()
                        .aspectRatio(CGSize(width: 100, height: 77), contentMode: .fit)
                }
            } //: Flags
            Spacer()
        } //:Container
        .padding(.horizontal, 30)
    }
}



#Preview {
    ContentView()
}
