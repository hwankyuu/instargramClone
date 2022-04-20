//
//  VideoPlayerView.swift
//  Catstargram
//
//  Created by 이환규 on 2022/04/20.
//

import UIKit
import AVKit

class VideoPlayerView: UIView {
    
    var playerLayer: AVPlayerLayer?  //재생될때 레이어를 잡아주는
    var playerLooper: AVPlayerLooper? // 루핑한다 반복재생되는 객체 담당
    var queuePlayer: AVQueuePlayer? // 먼저들어온 영상을 먼저 재생하고 나중에들어온 영상은 나중에 ...
    var urlStr: String
    
    
    init(frame: CGRect, urlStr:String) {
        self.urlStr = urlStr
        super.init(frame: frame)
        let videoFileURL = Bundle.main.url(forResource: urlStr, withExtension: "mp4")!
        let playItem = AVPlayerItem(url: videoFileURL)
        
        self.queuePlayer = AVQueuePlayer(playerItem: playItem)
        playerLayer = AVPlayerLayer()
        
        playerLayer!.player = queuePlayer
        playerLayer!.videoGravity = .resizeAspectFill
        
        self.layer.addSublayer(playerLayer!)
        
        playerLooper = AVPlayerLooper(player: queuePlayer!, templateItem: playItem)
        queuePlayer!.play()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func cleanup() {
        queuePlayer?.pause()
        queuePlayer?.removeAllItems()
        queuePlayer = nil

    }
    override func layoutSubviews() {
        super.layoutSubviews()
        playerLayer!.frame = bounds
    }
}
