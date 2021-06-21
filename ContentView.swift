//
//  ContentView.swift
//  Sub_Meal
//
//  Created by 이예직 on 2021/06/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("Meal")
                //.fontWeight(.bold) // bold 표시
                .foregroundColor(.black) // font Color Black 지정
                .font(.system(size:50)) // font size change
                .kerning(3) // 문자간 간격 설정
                .padding(.top, 40) // 임시
                //.font(.title)
            NavigationView{
                VStack{/*
                    NavigationLink(destination: ContentView()){
                        Text("네이버로 로그인")
                            .font(.system(size:20))
                            .bold()
                            .padding(7)
                            .background(Color.green)
                            .foregroundColor(Color.white)
                    }
                    NavigationLink(destination: ContentView()){
                        Text("페이스북으로 로그인")
                            .font(.system(size:20))
                            .bold()
                            .padding(7)
                            .background(Color.blue)
                            .foregroundColor(Color.white)
                    }
                    NavigationLink(destination: ContentView()){
                        Text("카카오톡으로 로그인")
                            .font(.system(size:20))
                            .bold()
                            .padding(7)
                            .background(Color.yellow)
                            .foregroundColor(Color.white)
                    }
                    NavigationLink(destination: ContentView()){
                        Text("구글로 로그인")
                            .font(.system(size:20))
                            .bold()
                            .padding(7)
                            .background(Color.gray)
                            .foregroundColor(Color.white)
                    }*/
                    Button(action: {}) {
                      Text("네이버로 로그인")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.green)
                        .cornerRadius(15.0)
                    }
                    Button(action: {}) {
                      Text("페이스북으로 로그인")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.blue)
                        .cornerRadius(15.0)
                    }
                    Button(action: {}) {
                      Text("카카오톡으로 로그인")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.yellow)
                        .cornerRadius(15.0)
                    }
                    Button(action: {}) {
                      Text("구글로 로그인")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.gray)
                        .cornerRadius(15.0)
                    }
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
