//
//  DateSelectedView.swift
//  SwiftUIFun
//
//  Created by ramil on 22.10.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct DateSelectedView: View {
    
    let dateTitles = ["Today", "Monthly", "Yearly", "Future"]
    
    var body: some View {
        HStack(alignment: .top) {
            ForEach(self.dateTitles, id: \.self) { title in
                VStack {
                    Text(title)
                        .bold()
                        .padding(.horizontal)
                    
                    if title.contains("Today") {
                        Rectangle()
                            .frame(width: 64, height: 4)
                            .foregroundColor(.red)
                    } else {
                        EmptyView()
                    }
                }
            }
            
        }.padding(.top)
    }
}

struct DateSelectedView_Previews: PreviewProvider {
    static var previews: some View {
        DateSelectedView()
    }
}
