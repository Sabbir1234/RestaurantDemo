//
//  ItemDetail.swift
//  iDine
//
//  Created by SABBIR HOSSAIN on 13/11/23.
//

import SwiftUI

struct ItemDetail: View {
    let item: MenuItem
    var body: some View {
        VStack {
            ZStack (alignment: .bottomTrailing){
                Image(item.mainImage)
                    .resizable()
                    .scaledToFit()
                Text("Photo: \(item.photoCredit)")
                    .padding()
                    .background(.black)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .offset(x: -5, y: -5)
            }
            Text(item.description)
                .padding()
            Spacer()
        }
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ItemDetail(item: MenuItem.example)
        }
    }
}
