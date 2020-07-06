//
//  ContentView.swift
//  Shared
//
//  Created by Shane Leigh on 05/07/2020.
//

import SwiftUI
import AVKit

struct ContentView: View {
    
//    var videoURL = Bundle.main.url(forResource: "test", withExtension: "mp4")!
    var videoURL = URL(string: "http://vfx.mtime.cn/Video/2019/03/19/mp4/190319212559089721.mp4")!
    
    var body: some View {
        VideoPlayer(player: AVPlayer(url: videoURL)) {
            Text("Shane Leigh")
                .font(.caption)
                .foregroundColor(.white)
                .background(Color.black.opacity(0.7))
                .clipShape(Capsule())
            
            Spacer()
        }
        .edgesIgnoringSafeArea(.all)
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
