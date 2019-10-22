//
//  CardView().swift
//  SwiftUIFun
//
//  Created by ramil on 22.10.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        
        HStack(alignment: .top) {
            Image("game")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80)
                .clipShape(Circle())
                .padding(.top)
            
            VStack(alignment: .leading) {
                Text("Games and stuff")
                    .font(.headline)
                    .bold()
                    .padding(.bottom)
                
                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.")
                    .padding(.bottom)
                
                HStack {
                    ZStack {
                        Capsule()
                            .foregroundColor(.red)
                            .frame(width: 80, height: 34)
                        Text("SETUP")
                            .foregroundColor(.white)
                            .bold()
                    }
                    
                    Spacer()
                    
                    Image(systemName: "heart.fill")
                        .font(.system(size: 27))
                        .foregroundColor(.red)
                }
            }.padding()
        }
        .background(Color.white)
        .shadow(color: .secondary, radius: 12, x: 0, y: 12)
        .cornerRadius(18)
        .padding()
    }
    
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
