import Foundation
import UIKit

class SheetView: UIView {
  let sheet = ViewController()
  
  let label = UILabel()
  
  private var _txt: String = "This is swift"
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    
    self.label.text = self._txt
    // self.label.layer.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 255/255, alpha: 1.0).cgColor
    self.addSubview(self.label)
    
    self.addSubview(sheet.view);
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
    // let width = String(format:"%.3f", Double(self.frame.size.width));
    // let height = String(format:"%.3f", Double(self.frame.size.height));
    // RCTLogInfo("Width: " + width + ", Height: " + height);
    self.label.frame = CGRect(x: 0, y: 0, width: self.frame.size.width, height: self.frame.size.height);
    sheet.view.frame = CGRect(x: 0, y: 0, width: self.frame.size.width, height: self.frame.size.height);
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  var txt: NSString? {
    set {
      if newValue != nil {
        self._txt = newValue! as String;
        //self.setNeedsDisplay();
        self.label.text = self._txt;
        
      }
    }
    get {
      return nil;
    }
  }
}
