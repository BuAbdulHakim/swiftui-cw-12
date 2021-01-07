//
//  Env.swift
//  SwiftUI_CW12
//
//  Created by NasserAlsaqabi on 07/01/2021.
//

import SwiftUI

class Env: ObservableObject{
    @Published var name: String = ""
    @Published var age: String = ""
    @Published var phone: String = ""
    @Published var isSecondPageShown: Bool = false

}
