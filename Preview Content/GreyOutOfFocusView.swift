import SwiftUI

struct GreyOutOfFocusView : View{
    var body: some View{
        Rectangle()
                    .frame(width: UIScreen.main.bounds.width,
                           height: UIScreen.main.bounds.height)
                    .background(Color.gray)
                    .opacity(0.7)
                    .ignoresSafeArea()
        
    }
}

struct GrayOutOfFocusView_Previews: PreviewProvider {
    static var previews: some View {
        GreyOutOfFocusView()
    }
}
