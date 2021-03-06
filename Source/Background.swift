import UIKit

class Background: UIView {

    override func draw(_ rect: CGRect) {
        super.draw(rect)

        if kludgeAutoLayout {
            let xs = scrnLandscape ? scrnSz[scrnIndex].y : scrnSz[scrnIndex].x
            let ys = scrnLandscape ? scrnSz[scrnIndex].x : scrnSz[scrnIndex].y

            let color = UIColor(red:0.1, green:0.1, blue:0.1, alpha: 1)
            color.setFill()
            UIBezierPath(rect:CGRect(x:0, y:0, width:xs, height:ys)).fill()
        }
    }

}
