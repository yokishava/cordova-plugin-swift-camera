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

import Foundation

protocol CameraButtonDelegate {
    func takePicture()
    func changeEnabledButton()
}

//カメラボタン
class CaptureButton: UIButton {
    
    var delegate: CameraButtonDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.center = CGPoint(x: frame.width / 1.12, y: frame.height / (3/4))
        self.frame.size = CGSize(width: 80, height: 80)
        self.backgroundColor = UIColor.white
        self.layer.cornerRadius = self.frame.width / 2
        self.addTarget(self, action: #selector(tappedButton(_:)), for: .touchUpInside)
    }
    
    @objc func tappedButton(_ sender: UIButton) {
        print("button tapped")
        delegate?.takePicture()
    }
    
    func buttonEnabled() {
        delegate?.changeEnabledButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
