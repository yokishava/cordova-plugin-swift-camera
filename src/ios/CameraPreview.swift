/*
 MIT License
 
 Copyright (c) 2018
 
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.
 */

import UIKit
import AVFoundation

//video gravity
enum CameraVideoGravity {
    case resize
    case resizeAspect
    case resizeAspectFill
}

//カメラプレビュー
class PreviewView: UIView {
    
    let previewLayer: AVCaptureVideoPreviewLayer
    
    init(frame: CGRect, session: AVCaptureSession, videoGravity: CameraVideoGravity) {
        
        previewLayer = AVCaptureVideoPreviewLayer(session: session)
        
        previewLayer.frame = frame
        
        super.init(frame: frame)
        
        decideVideoGravity(previewLayer, videoGravity)
        self.layer.addSublayer(previewLayer)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func decideVideoGravity(_ layer: AVCaptureVideoPreviewLayer, _ videoGravity: CameraVideoGravity) {
        switch videoGravity {
        case .resize:
            layer.videoGravity = AVLayerVideoGravity.resize
        case .resizeAspect:
            layer.videoGravity = AVLayerVideoGravity.resizeAspect
        case .resizeAspectFill:
            layer.videoGravity = AVLayerVideoGravity.resizeAspectFill
        }
    }
}
