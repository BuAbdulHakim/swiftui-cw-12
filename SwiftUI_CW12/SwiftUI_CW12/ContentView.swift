//
//  ContentView.swift
//  SwiftUI_CW12
//
//  Created by NasserAlsaqabi on 07/01/2021.
//

import SwiftUI

struct ContentView: View {
//    @State var name = ""
//    @State var age = ""
//    @State var phone = ""
//    @State var isSecondPageShown = false
    
    var body: some View {
            MainView()
                .environmentObject(Env())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MainView: View {
    @EnvironmentObject var env: Env

    var body: some View {
        VStack{
            Text("مرحباً بك في الكويت تبرمج")
                .padding(.bottom, 50) .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/) .font(.title)
            Button(action: {
                env.isSecondPageShown.toggle() //Or isSecondPageShwon = true
            })
            {
                Text("ادخل بياناتك")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white) .padding()
                    .background(Color.blue.opacity(0.7))
                    .clipShape(RoundedRectangle(cornerRadius: 15))
            }
            .sheet(isPresented: $env.isSecondPageShown){
                //SecondPage(name: $name, age: $age, phone: $phone)
                SecondPage(env:self.env)
            }
            if env.name != "" {
                HStack{
                    Spacer()
                    VStack(alignment: .trailing, spacing: 10){
                        Text("الاسم:\(env.name)")
                        Text("العمر:\(env.age)")
                        Text("الهاتف:\(env.phone)")
                    }.font(.title).padding()
                }
            }
        }
    }
}
