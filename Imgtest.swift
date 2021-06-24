//
//  Imgtest.swift
//  Sub_Meal
//
//  Created by 이예직 on 2021/06/25.
//

import SwiftUI

struct Imgtest: View{
    var body: some View{
        ZStack() { // alignment: .topTrailing
            Image("mainIMG")
                .resizable()
                .scaledToFit()
                //.frame(maxWidth: .infinity)
            Text("시작하기")
                .padding(4)
                .font(.system(size:25)) // font size change
                .foregroundColor(.black)
                .padding()
                .offset(x: -10, y: 15)
        }
    }
}

struct Imgtest_Preview: PreviewProvider{
    static var previews: some View{
        Imgtest()
    }
}
