import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    @IBOutlet weak var myScrollView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // make sure that the content inside scroll view is larger than the scroll view (height wise)
        myScrollView.contentSize = CGSize (width: myScrollView.frame.size.width, height: myScrollView.frame.size.height * 4)
        
        // use protocol to know if scroll is activated
        myScrollView.delegate = self
    }
    
    // protocol built in scroll functions
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        print("began scrolling")
    }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        print("scrolling stopped")
    }

}

