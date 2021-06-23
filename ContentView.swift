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
                .font(.system(size:55)) // font size change
                .kerning(3) // 문자간 간격 설정
                //.font(.title)
            NavigationView{
                VStack{
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
                    
                    NavigationLink(destination: ContentView()){
                        Text("시작하기")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            //.frame(width: 200, height: 50)
                            .background(Color.gray)
                            .cornerRadius(30.0)
                    }
                    
                    Spacer()
                    
                    VStack(){
                        Button(action: {}) {
                          Text("네이버 계정으로 시작하기")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color.green)
                            .cornerRadius(4.0)
                        }
                        Button(action: {}) {
                          Text("페이스북으로 시작하기")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color.blue)
                            .cornerRadius(4.0)
                        }
                        Button(action: {}) {
                          Text("카카오톡으로 시작하기")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color.yellow)
                            .cornerRadius(4.0)
                        }
                        Button(action: {}) {
                          Text("구글로 시작하기")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color.gray)
                            .cornerRadius(4.0)
                        }
                    }
                    Spacer()
                    Text("계정이 없으신가요?")
                    Button("가입하기"){
                        print("가입하기")
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
