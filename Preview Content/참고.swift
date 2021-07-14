//
//  Login.swift
//  Sub_Meal
//
//  Created by 이예직 on 2021/07/15.
//

import SwiftUI

public struct ActionSheetCardItem: View {
    let id = UUID()
    let sfSymbolName: String?
    let label: String
    let labelFont: Font
    let foregrounColor: Color
    let foregroundInactiveColor: Color
    let callback: (() -> ())?
    
    public init(
        sfSymbolName: String? = nil,
        label: String,
        labelFont: Font = Font.headline,
        foregrounColor: Color = Color.primary,
        foregroundInactiveColor: Color = Color.gray,
        callback: (() -> ())? = nil
    ) {
        self.sfSymbolName = sfSymbolName
        self.label = label
        self.labelFont = labelFont
        self.foregrounColor = foregrounColor
        self.foregroundInactiveColor = foregroundInactiveColor
        self.callback = callback
    }
    
    var buttonView: some View {
        HStack {
            if let sfSymbolName = sfSymbolName {
                Image(systemName: sfSymbolName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:19, height: 19)
                    .padding(.vertical)
                    .padding(.horizontal, 10)
            }
            
            Text(label)
                .font(labelFont)
            
            Spacer()
        }
    }
    
    public var body: some View {
        Group {
            if let callback = callback {
                Button(action: {
                    callback()
                }) {
                    buttonView
                        .foregroundColor(foregrounColor)
                }
            }
            else {
                buttonView
                    .foregroundColor(foregroundInactiveColor)
            }
        }
    }
}

struct ActionSheetCardItem_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            Spacer()
            ActionSheetCardItem(sfSymbolName: "play", label: "Play") {
                //
            }
            
            ActionSheetCardItem(sfSymbolName: "stop", label: "Stop") {
                //
            }
            
            ActionSheetCardItem(sfSymbolName: "record.circle", label: "Record")
            Spacer()
        }
    }
}

