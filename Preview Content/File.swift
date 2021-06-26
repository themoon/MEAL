import SwiftUI

struct MyWebViews: View {
    var body: some View {
        GeometryReader { geometry in
                    ZStack {
                        Image("mainIMG")
                            .resizable()
                            .aspectRatio(geometry.size, contentMode: .fill)
                            .edgesIgnoringSafeArea(.all)
                        VStack {
                            ForEach (1...10, id: \.self) { _ in
                                Text("Hallo")
                                    .foregroundColor(Color.white)
                            }
                        }
                    }
                }

    }
    
}


struct MyWebViews_Previews: PreviewProvider {
    static var previews: some View {
        MyWebViews()
    }
}



