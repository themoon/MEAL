import SwiftUI

struct Start: View{
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var email = ""
    @State var password = ""
    
    var body: some View{
        VStack{
            HStack{
                Button(action:{
                    self.presentationMode.wrappedValue.dismiss()
                }){
                    Image("x-icon")
                        .resizable()
                        .frame(width:30, height:30)
                        .padding()
                }
                
                Spacer()
                
                Button(action:{
                    self.presentationMode.wrappedValue.dismiss()
                }){
                    Image("x-icon")
                        .resizable()
                        .frame(width:30, height:30)
                        .padding()
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
                .background(RoundedRectangle(cornerRadius: 7).strokeBorder())
                .padding(.top, 50)
            
            TextField("      Password", text: $password)
                .frame(width: 300, height: 50)
                .background(RoundedRectangle(cornerRadius: 7).strokeBorder())
                .padding(.top, 5)
            
            Button(action: {}) {
              Text("계정 등록") // 아이디 비번 입력 시 색 변화 필요
                .font(.headline) // 이 속성 활용하기
                .foregroundColor(.white)
                
                .frame(width: 300, height: 50)
                .background(Color.BlueYonder)
            }
                .cornerRadius(7)
                .overlay(
                        RoundedRectangle(cornerRadius: 7)
                            .stroke(Color.BlueYonder, lineWidth: 0.5)
                    )
                    
                .padding(.top, 20)
            Spacer()
                
            
            
                
            
            
        }
    }
}

struct Start_Previews: PreviewProvider {
    static var previews: some View {
        Start()
    }
}
