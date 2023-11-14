//
//  iDineApp.swift
//  iDine
//
//  Created by SABBIR HOSSAIN on 13/11/23.
//

import SwiftUI

@main
struct iDineApp: App {
    @StateObject var order = Order()
    var body: some Scene {
        WindowGroup {
            MainView().environmentObject(order)
        }
    }
}
