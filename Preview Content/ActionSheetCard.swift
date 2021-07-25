import SwiftUI


struct ActionSheetCard : View{
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
                .frame(width: .infinity, height: 350)
                .cornerRadius(15)
        }
            
        
    }
}

struct ActionSheetCard_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetCard()
    }
}
