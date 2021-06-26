import SwiftUI

struct MyWebViews: View {
    var body: some View {
        
                GeometryReader {
                        geometry in
                        ZStack {
                            Image("mainIMG")
                                .resizable()
                                .aspectRatio(geometry.size, contentMode: .fill)
                                .edgesIgnoringSafeArea(.all)
                            
                        }
                }

    }
    
}


struct MyWebViews_Previews: PreviewProvider {
    static var previews: some View {
        MyWebViews()
    }
}

//icon img 좀더 카메라 형식으로 바꾸기 안쪽 회식 그리고 바깥으로 투명도 있는 색 다이어트 카메라 AI 활용하기

