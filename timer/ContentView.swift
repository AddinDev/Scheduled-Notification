//
//  ContentView.swift
//  timer
//
//  Created by addin on 11/02/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var notificationManager = LocalNotificationManager()
    
    @State var showFootnote = false
    
    var body: some View {
        NavigationView {
            VStack {
                Button(action: {
                    self.notificationManager.sendNotification(title: "Hurray!", subtitle: nil, body: "If you see this text, launching the local notification worked!", hour: 9, minute: 59)
                }) {
                    Text("Launch Local Notification ")
                        .font(.title)
                }
            }
            .navigationBarTitle("Local Notification Demo", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
