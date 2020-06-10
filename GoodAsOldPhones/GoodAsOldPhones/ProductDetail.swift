//
//  ProductDetail.swift
//  GoodAsOldPhones
//
//  Created by Woonohyo on 2020/06/10.
//  Copyright © 2020 woonohyo. All rights reserved.
//

import SwiftUI

struct ProductDetail: View {
    var product: Product
    
    var body: some View {
        VStack {
            Text(product.name).font(.largeTitle).bold().padding()
            
            Button(action: {
                print("Add to cart successfully")
            }) {
                Image("button-addtocart")
            }
            
            Spacer()
        }.background(product.fullScreenImage).edgesIgnoringSafeArea(.top)
    }
}

struct ProductDetail_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetail(product: productData[0])
    }
}
