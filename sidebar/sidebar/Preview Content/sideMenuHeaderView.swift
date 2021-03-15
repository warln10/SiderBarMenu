//
//  sideMenuHeaderView.swift
//  sidebar
//
//  Created by Macbook on 12/03/21.
//

import SwiftUI

struct sideMenuHeaderView: View {
    @Binding var isShowing: Bool
    var body: some View {
        ZStack (alignment: .topTrailing){
            Button(action: {
                withAnimation(.spring()){
                    isShowing.toggle()
                }
            }, label: {
                Image(systemName: "xmark")
                    .frame(width: 32, height: 32)
                    .foregroundColor(.white)
                    .padding()
            })
            
            VStack(alignment: .leading) {
                Image("Itachi")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 64, height: 64, alignment: .center)
                    .clipShape(Circle())
                    .padding(.bottom , 16)
                Text("Itachi Uchiha")
                    .font(.system(size: 24, weight: .semibold))
                Text("@Itachi")
                    .font(.system(size: 14))
                    .padding(.bottom, 24)
                
                HStack(spacing : 12) {
                    HStack(spacing: 4) {
                        Text("1,254").bold()
                        Text("Following")
                    }
                    HStack(spacing: 4) {
                        Text("607").bold()
                        Text("Following")
                    }
                    Spacer()
                }
                
                Spacer()
            }
            .foregroundColor(.white)
            .padding()
        }
       
    }
}

struct sideMenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        sideMenuHeaderView(isShowing: .constant(true))
    }
}
