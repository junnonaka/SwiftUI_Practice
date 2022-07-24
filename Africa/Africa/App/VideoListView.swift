//
//  VideoListView.swift
//  Africa
//
//  Created by 野中淳 on 2022/07/10.
//

import SwiftUI

struct VideoListView: View {
    
    @State var videos:[Video] = Bundle.main.decode("videos.json")
    //haptic
    let hapticImapact = UIImpactFeedbackGenerator(style: .medium)
    
    var body: some View {
        NavigationView {
            List(videos) { item in
                NavigationLink(destination: {
                    VideoPlayerView(videoSelected: item.id, videoTitle: item.name)
                }, label: {
                    VideoListItemView(video: item)
                        .padding(.vertical,8)
                })
            }//List
            .listStyle(.insetGrouped)
            .navigationTitle("Videos")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        //ShuffulVideo
                        videos.shuffle()
                        //haptic
                        hapticImapact.impactOccurred()
                    } label: {
                        Image(systemName: "arrow.2.squarepath")
                    }

                }
            }
        }//Navigation
    }
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
