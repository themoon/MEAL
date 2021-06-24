//
//  ContentView.swift
//  Sub_Meal
//
//  Created by 이예직 on 2021/06/22.
//

import SwiftUI

extension Color{
    static let BlueYonder = Color("BlueYonder")
    static let GoogleBackColor = Color("GoogleBackColor")
}

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                    Text("Meal") // 나중에 아이콘 으로 바꾸면 괜찮을듯
                        //.fontWeight(.bold) // bold 표시
                        .foregroundColor(.black) // font Color Black 지정
                        .font(.system(size:55)) // font size change
                        .kerning(3) // 문자간 간격 설정
                        .padding(.top, -60)
                        //.font(.title)
                    /*
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
                    

                    ZStack() { // alignment: .topTrailing
                        Image("mainIMG")
                            .resizable()
                            .scaledToFit() // 변경필요
                            //.frame(maxWidth: .infinity)
                        /*NavigationLink(destination: ContentView()){
                            Text("시작하기")
                                .padding()
                                .font(.system(size:25)) // font size change
                                .foregroundColor(.black)
                                .padding()
                                //.offset(x: -10, y: 15)
                                //.frame(width: 200, height: 50)
                                //.background(Color.gray)
                                //.cornerRadius(30.0)
                                //.cornerRadius(4.0)
                                // wigth는 오토로 전체 높이는 맞춰서 사진 넣고 시작하기 버튼 넣어놓기
                        }*/
                    }
                    
                    
                    Spacer()
                    
                    VStack(){
                        Button(action: {}) {
                          Text("페이스북으로 시작하기")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color.BlueYonder)
                            .cornerRadius(4.0)
                        }.shadow(color: .gray, radius: 2, x: 0, y: 2)
                        Button(action: {}) {
                          Text("카카오톡으로 시작하기")
                            .font(.headline)
                            .foregroundColor(.black)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color.yellow)
                            .cornerRadius(4.0)
                        }.shadow(color: .gray, radius: 2, x: 0, y: 2)
                        Button(action: {}) {
                          Text("네이버 계정으로 시작하기")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color.green)
                            .cornerRadius(4.0)
                        }.shadow(color: .gray, radius: 2, x: 0, y: 2)
                        Button(action: {}) {
                          Text("구글로 시작하기")
                            .font(.headline)
                            .foregroundColor(.black)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color.GoogleBackColor)
                            .cornerRadius(4.0)
                        }.shadow(color: .gray, radius: 2, x: 0, y: 2)
                    }
                    Spacer()
                    HStack{
                        Text("계정이 없으신가요?")
                        Button("가입하기"){
                            print("가입하기")
                        }
                    }.font(.system(size:15))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
