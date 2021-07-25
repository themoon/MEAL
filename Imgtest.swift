
import SwiftUI

struct Content: View {
    @State var halfMoal_shown = false
    
    var body: some View{
        ZStack{
            Button(action: {
                self.halfMoal_shown.toggle()
            }) {
                Text("ww")
            }
            HalfModalView(isShown: $halfMoal_shown){
                Text("HI modal")
            }
        }
    }
}

struct Content_Previews: PreviewProvider {
    static var previews: some View {
        Content()
    }
}

