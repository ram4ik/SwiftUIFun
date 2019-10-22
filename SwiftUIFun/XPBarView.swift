//
//  XPBarView.swift
//  SwiftUIFun
//
//  Created by ramil on 22.10.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct XPBarView: View {
    var body: some View {
        VStack {
            ZStack {
                Capsule()
                    .foregroundColor(.secondary)
                    .frame(height: 16)
                GeometryReader { geometry in
                    Capsule()
                        .foregroundColor(.blue)
                        .frame(width: geometry.size.width / 2, height: 16)
                        .padding(.trailing, geometry.size.width / 2)
                }.frame(height: 16)
            }.padding([.top, .horizontal])
            
            HStack {
                Text("Beginner level")
                    .foregroundColor(.secondary)
                Spacer()
                Text("XP 380/500")
            }.padding([.horizontal, .bottom])
        }
    }
}

struct XPBarView_Previews: PreviewProvider {
    static var previews: some View {
        XPBarView()
    }
}
