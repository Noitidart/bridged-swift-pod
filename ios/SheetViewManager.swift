import Foundation

@objc(SheetViewManager)
class SheetViewManager : RCTViewManager {
  
  override func view() -> UIView! {
    return SheetView();
  }
  
}
