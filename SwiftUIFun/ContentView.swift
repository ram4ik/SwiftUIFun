//
//  ContentView.swift
//  SwiftUIFun
//
//  Created by ramil on 22.10.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        VStack {
            TopView()
            XPBarView()
            DateSelectedView()
            
            ZStack {
                Rectangle()
                    .foregroundColor(.gray)
                    .opacity(0.4)
                    .edgesIgnoringSafeArea(.bottom)
                
                ScrollView(.vertical, showsIndicators: true) {
                    ForEach(0 ..< 5) { item in
                        CardView()
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
