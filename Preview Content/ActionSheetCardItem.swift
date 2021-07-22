import SwiftUI

struct ActionSheetCardItem : View{
    var body: some View{
        GeometryReader {
                geometry in
                ZStack {
                    Image("whitebackgroundimg")
                        .resizable()
                        .aspectRatio(geometry.size, contentMode: .fill)
                        .edgesIgnoringSafeArea(.all)
        
                VStack{
                    
                    Button(action: {}) {
                      Text("등록 하기") // 아이디 비번 입력 시 색 변화 필요
                        .font(.headline) // 이 속성 활용하기
                        .foregroundColor(.white)
                        
                        .frame(width: 300, height: 50)
                        .background(Color.BlueYonder)
                    }
                    .cornerRadius(CGFloat(7))
                        .overlay(
                                RoundedRectangle(cornerRadius: CGFloat(7))
                                    .stroke(Color.BlueYonder, lineWidth: 0.5)
                            )
                        //.padding(.top, 20)
                    // 등록 하기 button form line
                    
                    ZStack{
                        Image("kakaoicon")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .zIndex(1)
                            .padding(.trailing, 190)
                        
                        Button(action: {}) {
                          Text("카카오톡으로 시작하기")
                            .font(.headline)
                            .foregroundColor(.black)
                            .frame(width: 300, height: 50)
                            .background(Color.kakaoyellow)
                        }
                        .cornerRadius(CGFloat(7))
                            .overlay(
                                    RoundedRectangle(cornerRadius: CGFloat(7))
                                        .stroke(Color.kakaoyellow, lineWidth: 0.5)
                                 )
                    } // kakao login form line
                    
                    ZStack{
                        Image(systemName: "applelogo")
                            .resizable()
                            .frame(width: 16, height: 16)
                            .zIndex(1)
                            .padding(.trailing, 140)
                            .foregroundColor(.white)
                        
                        Button(action: {}) {
                          Text("Apple로 로그인")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(width: 300, height: 50)
                            .background(Color.black)
                        }
                        .cornerRadius(CGFloat(7))
                            .overlay(
                                    RoundedRectangle(cornerRadius: CGFloat(7))
                                        .stroke(Color.black, lineWidth: 0.5)
                                )
                        .padding(.top, 2)
                    } // apple login form line
                    
                    HStack{
                        Text("계정이 없으신가요?")
                            .foregroundColor(Color.gray)
                            .font(.system(size:15))
                            .font(.headline)
                        Button(action: {}){
                            Text("계정 등록")
                                .foregroundColor(Color.black)
                                .font(.system(size:15))
                                .font(.headline)
                        }
                    }
                    .frame(width: 300, height: 100)
                    // bottom infomation Text line
                    
                }
                .padding(.top, 30)
            }
        }
    }
}


struct ActionSheetCardItem_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetCardItem()
    }
}
