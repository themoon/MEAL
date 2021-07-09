import SwiftUI

struct Start: View{
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var email = ""
    @State var password = ""
    
    enum Size : Int {
        case CornerRadius = 7
    }
    
    let buttonwidth : Int = 300
    let buttonheight : Int = 50
    
    let image = UIImage(systemName: "applelogo")
    
    
    var body: some View{
        
        
        GeometryReader {
                geometry in
                ZStack {
                    Image("whitebackgroundimg")
                        .resizable()
                        .aspectRatio(geometry.size, contentMode: .fill)
                        .edgesIgnoringSafeArea(.all)
                    
        VStack{
            HStack{
                Button(action:{
                    self.presentationMode.wrappedValue.dismiss()
                }){
                    //Image("x-icon")
                        //.resizable()
                        //.frame(width:30, height:30
                        Text(" ")
                        .padding()
                }
                
                Spacer()
                
                Button(action:{
                    self.presentationMode.wrappedValue.dismiss()
                }){
                    Text("Cancel")
                        .padding()
                        //.foregroundColor(.black)
                }
            }
            
            
            //.position(x: 30, y: 30)
            Text("계정 등록")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.center)
                .padding(.top, 30)
                .font(.system(size:25))
                .foregroundColor(.black)
          
            
            TextField("      ID / E-mail Address", text: $email)
                .frame(width: 300, height: 50)
                .cornerRadius(CGFloat(Size.CornerRadius.rawValue))
                .overlay(
                        RoundedRectangle(cornerRadius: 7)
                            .stroke(Color.BlueYonder, lineWidth: 0.5)
                    )
                .padding(.top, 50)
            
            TextField("      Password", text: $password)
                .frame(width: 300, height: 50)
                .cornerRadius(CGFloat(Size.CornerRadius.rawValue))
                .overlay(
                        RoundedRectangle(cornerRadius: 7)
                            .stroke(Color.BlueYonder, lineWidth: 0.5)
                    )
                .padding(.top, 5)
            
            Button(action: {}) {
              Text("등록 하기") // 아이디 비번 입력 시 색 변화 필요
                .font(.headline) // 이 속성 활용하기
                .foregroundColor(.white)
                
                .frame(width: 300, height: 50)
                .background(Color.BlueYonder)
            }
            .cornerRadius(CGFloat(Size.CornerRadius.rawValue))
                .overlay(
                        RoundedRectangle(cornerRadius: CGFloat(Size.CornerRadius.rawValue))
                            .stroke(Color.BlueYonder, lineWidth: 0.5)
                    )
                .padding(.top, 20)
            
            
            Divider()
                //.background(Color.gray)
                .padding(.top, 40)
                .frame(width: 300)
                .padding(.bottom, 40)
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
                .cornerRadius(CGFloat(Size.CornerRadius.rawValue))
                    .overlay(
                            RoundedRectangle(cornerRadius: CGFloat(Size.CornerRadius.rawValue))
                                .stroke(Color.kakaoyellow, lineWidth: 0.5)
                         )
            }
            
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
                .cornerRadius(CGFloat(Size.CornerRadius.rawValue))
                    .overlay(
                            RoundedRectangle(cornerRadius: CGFloat(Size.CornerRadius.rawValue))
                                .stroke(Color.black, lineWidth: 0.5)
                        )
                .padding(.top, 2)
            }
                
            Spacer()
                
            
            
                
            
            
                }
            }
        }
    }
}

struct Start_Previews: PreviewProvider {
    static var previews: some View {
        Start()
    }
}
