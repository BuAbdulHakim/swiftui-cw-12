//
//  SecondPage.swift
//  SwiftUI_CW12
//
//  Created by NasserAlsaqabi on 07/01/2021.
//

import SwiftUI

struct SecondPage: View {
//    @Binding var name: String
//    @Binding var age: String
//    @Binding var phone: String
    
    @ObservedObject var env: Env
    @Environment(\.presentationMode) var presentation
    var body: some View {
        VStack{
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 40) {
                TextField("الاسم", text: $env.name)
                TextField("العمر", text: $env.age)
                TextField("الهاتف", text: $env.phone)
            }.padding()
            .font(.title)
            .multilineTextAlignment(.trailing)
            Button(action: {
                presentation.wrappedValue.dismiss()
                
            }, label: {
                Text("موافق")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue.opacity(0.7))
                    .clipShape(RoundedRectangle(cornerRadius: 15))
            })
        }
    }
}
//
//struct SecondPage_Previews: PreviewProvider {
//    static var previews: some View {
//        SecondPage(name: $name, age: $age, phone: $phone)
//    }
//}
