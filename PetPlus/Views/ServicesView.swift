//
//  ServicesView.swift
//  PetPlus
//
//  Created by Kari Groszewska on 7/9/25.
//

import SwiftUI

struct ServicesView: View {
    @State var samplePetList = [Pet(), Pet(), Pet()]
    @State var currentPet = 1
    var body: some View {
        ScrollView {
            HStack {
                Image("blank")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 75, height: 75)
                    .clipShape(Circle())
                    .padding()
                Text("Hello,")
                    .font(.custom("Poppins-Regular", size: 15))
                    .foregroundColor(.accentColorDark)
                Text("\(samplePetList[0].name)!")
                    .font(.custom("Poppins-SemiBold", size: 15))
                    .padding(.leading, -3)
                    .foregroundColor(.accentColorDark)
                Spacer()
                Image(systemName: "bell")
                    .font(.system(size: 32))
                    .foregroundColor(.accentColorDark)

            }
            VStack{
                Label("My Pets", systemImage: "pawprint")
                    .font(.custom("Poppins-SemiBold", size: 30))
                    .padding(.top)
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(samplePetList.indices){ index in
                            VStack {
                                Image(samplePetList[index].image)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: index == currentPet ? 120 : 100, height: index == currentPet ? 120 : 100)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                    .padding(5)
                                Text(samplePetList[index].name)
                                    .font(index == currentPet ? .custom("Poppins-Medium", size: 18): .custom("Poppins-Regular", size: 15))
                                    .padding(.bottom)
                                
                            }
                        }
                    }
                }
                
            }
            .frame(maxWidth: .infinity)
            .background(.accent)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding()
            VStack {
                Text("Upcoming Vaccines")
                    .font(.custom("Poppins-SemiBold", size: 30))
                
            }
            .frame(maxWidth: .infinity)
            .background(.accent)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding()
        }
    }
}

#Preview {
    ServicesView()
}
