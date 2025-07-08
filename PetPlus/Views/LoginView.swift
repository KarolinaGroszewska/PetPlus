//
//  LoginView.swift
//  PetPlus
//
//  Created by Kari Groszewska on 7/7/25.
//

import SwiftUI

struct LoginView: View {
    //TODO: Add email address validation
    @State var email : String = ""
    @State var password : String = ""
    var body: some View {
        Spacer()
        Text("Login to PetPlus")
            .foregroundColor(Color("mainColor"))
            .font(.custom("Poppins-Bold", size: 32))
        Image(systemName: "pawprint.circle.fill")
            .font(.system(size: 200))
            .foregroundColor(Color("mainColor"))
        Text("Email")
            .padding([.leading])
            .foregroundColor(Color("accentColorLight"))
            .frame(maxWidth:.infinity,alignment: .leading)
            .font(.custom("Poppins-Medium", size: 12))
        TextField("", text: $email)
            .foregroundColor(Color("accentColorLight"))
            .padding(4)
            .overlay {
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color("mainColor"), lineWidth: 2)
            }
            .padding([.leading, .trailing, .bottom])

        Text("Password")
            .padding([.leading])
            .foregroundColor(Color("accentColorLight"))
            .frame(maxWidth:.infinity,alignment: .leading)
            .font(.custom("Poppins-Medium", size: 12))
        //TODO: Show Password Toggle
        SecureField("", text: $password)
            .foregroundColor(Color("accentColorLight"))
            .padding(4)
            .overlay {
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color("mainColor"), lineWidth: 2)
            }
            .padding([.leading, .trailing])
        Button {
            //TODO: Add password reset
            print("TODO: Add Password Reset")
        } label: {
            Text("Forgot Password? Click Here")
                .foregroundColor(Color("accentColorDark"))
                .font(.custom("Poppins-Regular", size: 12))
        }
        .padding(.bottom)
        Button  {
            //TODO: Add login workflow
            print("TODO: Add Login Workflow")
        } label: {
            Text("Login")
                .textCase(.uppercase)
                .foregroundColor(.white)
                .font(.custom("Poppins-SemiBold", size: 14))
                .padding()
                .frame(width: UIScreen.main.bounds.width - 20, height: 40)
                .background(Color("mainColor"))
                .cornerRadius(8)
        }
        .padding(.bottom)
        Divider()
            .frame(width: UIScreen.main.bounds.width - 20, height: 1)
            .background(Color("mainColor"))
        Button  {
            //TODO: Add registration workflow
            print("TODO: Add registration Workflow")
        } label: {
            Text("Sign Up")
                .textCase(.uppercase)
                .foregroundColor(.white)
                .font(.custom("Poppins-SemiBold", size: 14))
                .padding()
                .frame(width: UIScreen.main.bounds.width - 20, height: 40)
                .background(Color("mainColor"))
                .cornerRadius(8)
        }
        .padding(.top)
        Spacer()
        Text("By continuing, you agree to our Terms of Service and Privacy Policy.")
            .padding()
            .multilineTextAlignment(.center)
            .foregroundColor(Color("accentColorDark"))
            .font(.custom("Poppins-Regular", size: 12))
    }
}

#Preview {
    LoginView()
}
