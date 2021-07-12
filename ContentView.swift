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
    static let kakaoyellow = Color("kakaoyellow")
    static let AppleDefalut = Color("AppleDefalut")
}

class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        sleep(2)
        return true
    }
}


struct ContentView: View {
  @State private var showModal = false

    var body: some View {
        
        NavigationView{
            GeometryReader {
                    geometry in
                    ZStack {
                        Image("whitebackgroundimg")
                            .resizable()
                            .aspectRatio(geometry.size, contentMode: .fill)
                            .edgesIgnoringSafeArea(.all)
                        
                        VStack{
                                Image("mainios")
                                    .cornerRadius(50, antialiased: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                                Text("Meal")
                                    .foregroundColor(.black)
                                    .font(.system(size:50))
                                Spacer()
                                
                                VStack(){
                                        Button(action: {
                                            
                                        }) {
                                          Text("로그인")
                                            .font(.headline)
                                            .foregroundColor(.white)
                                            .padding()
                                            .frame(width: 300, height: 50)
                                            .background(Color.BlueYonder)
                                        }
                                        .cornerRadius(7)
                                        .overlay(
                                                RoundedRectangle(cornerRadius: 7)
                                                    .stroke(Color.BlueYonder, lineWidth: 0.5)
                                            )
                                        
                                        //.shadow(color: .gray, radius: 2, x: 0, y: 2)
                                    
                                        Button(action: {
                                            self.showModal = true
                                        }) {
                                            Text("시작")
                                            .font(.headline)
                                            .foregroundColor(.black)
                                            .padding()
                                            .frame(width: 300, height: 50)
                                            .background(Color.GoogleBackColor)
                                                .sheet(isPresented: self.$showModal){
                                                    Start()
                                                }
                                        }
                                        .cornerRadius(7)
                                        .overlay(
                                                RoundedRectangle(cornerRadius: 7)
                                                    .stroke(Color.BlueYonder, lineWidth: 0.5)
                                            )
                                        .padding(.top, 5)
                                        
                                        //.shadow(color: .gray, radius: 2, x: 0, y: 2)
                                }
                                
                                HStack{
                                    Text("둘 중 하나를 선택함으로써, 귀하는 이용약관 및 개인 정보 보호 정책에 동의하시게 됩니다.")
                                        .foregroundColor(.black)
                                        .font(.system(size:13))
                                        .padding()
                                        .frame(width: 350)
                                        .multilineTextAlignment(.center)
                                }
                                
                            Spacer()
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
