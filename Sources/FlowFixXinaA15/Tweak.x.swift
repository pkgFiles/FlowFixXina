import Orion
import FlowFixXinaA15C

class MediaControlsViewControllerHook: ClassHook<CSMediaControlsViewController> {
    
    func viewDidLoad() {
        // Loading the original viewDidLoad()
        orig.viewDidLoad()
        
        // Removing Media Controls from Superview
        if let subview = target.view.subviews.first {
            subview.removeFromSuperview()
        }
    }
}
