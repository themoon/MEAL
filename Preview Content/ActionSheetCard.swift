import SwiftUI


struct ActionSgeetCard : View{
    @State var offset = UIScreen.main.bounds.height
    @Binding var isShowing: Bool
    
    init(isShowing : Binding<Bool> = .constant(true)){
        _isShowing = isShowing
    }
    
    var body: some View{
        ZStack(alignment: .bottom){
            GreyOutOfFocusView()
            // -- //
            
            ActionSheetCardItem()
                .frame(width: .infinity, height: 350, alignment: .center)
                .cornerRadius(15)
        }
            
        
    }
}

struct ActionSgeetCard_Previews: PreviewProvider {
    static var previews: some View {
        ActionSgeetCard()
    }
}
