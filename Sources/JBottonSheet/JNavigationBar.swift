import UIKit

public final class JNavigationBar: UINavigationBar {
    
    var navigationController: UINavigationController?
    var type: JBottomSheetType = .plain
    
    public override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        let view = super.hitTest(point, with: event)
        switch type {
        case .plain:
            return view
        case .navigation:
            if view is UIControl {
                return view
            }
            return navigationController?.topViewController?.view
        }
    }
}
