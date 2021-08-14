//
//  index.swift
//  Sub_Meal
//
//  Created by 이예직 on 2021/08/13.
//

import SwiftUI

extension Color{
    static let BlueYonder = Color("BlueYonder")
    static let GoogleBackColor = Color("GoogleBackColor")
    static let kakaoyellow = Color("kakaoyellow")
    static let AppleDefalut = Color("AppleDefalut")
}

struct ContentView: View{
    @State private var Login = false
    @State private var Start = false
    
    var body: some View{
        ZStack{
            
            Button(action:{
                self.Login.toggle()
            }) {
                Text("로그인")
                    .font(.headline)
                    .padding()
                    .frame(width: 300, height: 50)
                    .foregroundColor(.white)
                    .background(Color.BlueYonder)
                    .cornerRadius(7)
            }
            HalfModalView(isShown: $Login){
                //Text("HI modal")
                ActionSheetCardItem()
            }
                .zIndex(100) // 중요
             
            Button(action:{
                self.Start.toggle()
            }){
                Text("시작")
                    .font(.headline)
                    .padding()
                    .frame(width: 300, height: 50)
                    .foregroundColor(.black)
                    .background(Color.GoogleBackColor)
                    .cornerRadius(7)
                    .overlay(
                        RoundedRectangle(cornerRadius: 7)
                            .stroke(Color.BlueYonder, lineWidth: 0.5)
                    )
                    .padding(.top, 5)
                    // -- sheet 작업
                    .sheet(isPresented: self.$Start){
                        Sub_Meal.Start()
                    }
            }
                .padding(.top, 110)
            
            
            Text("둘 중 하나를 선택함으로써, 귀하는 이용약관 및 개인 정보 보호 정책에 동의하시게 됩니다.")
                .foregroundColor(.black)
                .font(.system(size:13))
                .padding()
                .frame(width: 350)
                .multilineTextAlignment(.center)
                .padding(.top, 260)
            // --
            VStack{
                
                // 첫번째
                    Image("mainios") // 메인 상단 이미지
                        .cornerRadius(50, antialiased: true)
                    Text("Meal") // 메인 상단 제목
                        .font(.system(size:50))
                    Spacer()
                        .frame(height: 400)
                // VStack 중 첫번째
                
                
            }
        }.padding(.bottom, 20) // 오류수정
    } // some View block code
} // Index View block code

struct ContentView_Previews: PreviewProvider{
    static var previews: some View{
        ContentView()
    }
}
