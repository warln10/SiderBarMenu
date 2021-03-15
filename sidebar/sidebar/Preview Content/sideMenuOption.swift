//
//  sideMenuOption.swift
//  sidebar
//
//  Created by Macbook on 12/03/21.
//

import SwiftUI

struct sideMenuOption: View {
    var body: some View {
        HStack(spacing: 16){
            Image(systemName: "person")
                .frame(width: 24, height: 24)
            
            Text("Profile")
                .font(.system(size: 15, weight: .semibold))
            Spacer()
        }
        .foregroundColor(.white)
        .padding()
    }
}

struct sideMenuOption_Previews: PreviewProvider {
    static var previews: some View {
        sideMenuOption()
    }
}
