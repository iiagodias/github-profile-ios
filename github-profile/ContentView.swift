//
//  ContentView.swift
//  github-profile
//
//  Created by Iago Dias on 12/06/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            ZStack{
                Color("Primary")
            }.ignoresSafeArea()
                       
            ScrollView{
                VStack(spacing: 16){
                    
                    ForEach(0..<50) { item in
                        CardRepository()
                    }
                }
                .padding(16)
            }
        
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CardRepository: View {
    var body: some View {
        Button(action: {}) {
            VStack{
                VStack(alignment: .leading, spacing: 8) {
                    Text("Titulo do repositorio")
                        .foregroundColor(Color("Secondary"))
                    Text("Descrição do Repo")
                        .foregroundColor(Color("Secondary"))
                    HStack{
                        Image("user")
                        Text("Iago Dias")
                            .foregroundColor(Color("Secondary"))
                    }
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(16)
                .background(Color("Porcelain"))
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color("SilverSand"), lineWidth: 4)
                )
                .cornerRadius(8)
                
           }
      }

    }
}
