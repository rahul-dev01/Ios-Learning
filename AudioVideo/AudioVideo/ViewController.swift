import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var audioPlayer: AVAudioPlayer!
    
    
    @IBAction func playAudio(_ sender: Any) {
        
        let path = Bundle.main.path(forResource: "fav", ofType: "mp3")
        let urlObj = URL(fileURLWithPath: path!)
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: urlObj)
            audioPlayer.play()
        }
        catch {
            print("Error playing audio")
        }
    }
    
    @IBAction func pauseAudio(_ sender: Any) {
        audioPlayer?.pause()
    }
    
    
    @IBAction func stopAudio(_ sender: Any) {
        audioPlayer.stop()
        audioPlayer.currentTime = 0
    }
    
    
    
    
    // Video Player
    
    @IBAction func videoPlayer(_ sender: Any) {
        let path = Bundle.main.path(forResource: "favSong", ofType: "mp4")
        let urlObj = URL(fileURLWithPath: path!)
        
        let videoPlayerController = AVPlayerViewController()
        videoPlayerController.player = AVPlayer(url: urlObj)
        
        present(videoPlayerController, animated: true) {
            videoPlayerController.player?.play()
        }
    }
}
