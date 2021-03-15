//
//  SideMenuView.swift
//  sidebar
//
//  Created by Macbook on 12/03/21.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing: Bool
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack {
                sideMenuHeaderView(isShowing: $isShowing)
                    .frame(height:240)
                
                
                ForEach(0..<6){ _ in
                    sideMenuOption()
                }
                Spacer()
            }
        }
        .navigationBarHidden(true)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isShowing: .constant(true))
    }
}
