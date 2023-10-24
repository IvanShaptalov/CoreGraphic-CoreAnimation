//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        setupViews()
    }
    
    private func setupViews(){
        self.getRootView()
        let redSubView = getRedSubView()
        let greenSubView = getGreenSubView()
        let whiteSubView = getWhiteSubView()
        redSubView.transform = CGAffineTransform(rotationAngle: .pi/3)

        
        set(view : greenSubView, toCenterOfView: redSubView)
        whiteSubView.center = greenSubView.center
        // set(view : whiteSubView, toCenterOfView: redSubView)
        self.view.addSubview(redSubView)
        redSubView.addSubview(greenSubView)
        redSubView.addSubview(whiteSubView)
        let pinkView = getPinkView()
        self.view.addSubview(pinkView)
    }
    
    private func set(view moveView: UIView, toCenterOfView baseView: UIView){      
        moveView.center = CGPoint(x: baseView.bounds.midX, y: baseView.bounds.midY)
    }
    
    private func getRootView(){
        let view = UIView()
        view.backgroundColor = .gray
        self.view = view
    }
    
    private func getRedSubView() -> UIView {
        let viewFrame = CGRect(x: 50, y: 50, width: 200, height: 200)
        let view = UIView(frame: viewFrame)
        view.backgroundColor = .red
        view.clipsToBounds = true
        return view
    }
    
    private func getGreenSubView() -> UIView {
        let viewFrame = CGRect(x: 10, y: 10, width: 180, height: 180)
        let view = UIView(frame: viewFrame)
        view.backgroundColor = .green
        view.clipsToBounds = true
        return view
    }
    
    private func getWhiteSubView() -> UIView {
        let viewFrame = CGRect(x: 0, y: 0, width: 50, height: 50)
        
        let view = UIView(frame: viewFrame)
        
        view.backgroundColor = .white
        view.clipsToBounds = true
        return view
    }
    
    private func getPinkView() -> UIView {
        let viewFrame = CGRect(x: 50, y: 300, width: 100, height: 100)
        
        let view = UIView(frame: viewFrame)
        
        view.backgroundColor = .systemPink
        
        view.layer.borderWidth = 5
        
        view.layer.borderColor = UIColor.yellow.cgColor
        
        view.layer.cornerRadius = 10
        
        view.layer.shadowOpacity = 0.95
        
        view.layer.shadowOpacity = 1
        
        view.layer.shadowRadius = 20
        
        view.layer.shadowOffset = CGSize(width: 10, height: 20)
        
        view.layer.shadowColor = UIColor.white.cgColor
        
        view.layer.opacity = 0.7
        
        view.layer.backgroundColor = UIColor.black.cgColor

        view.layer.backgroundColor = UIColor.systemPink.cgColor
        
        // создание дочернего
        let layer = CALayer()
        // изменение фонового
        layer.backgroundColor = UIColor.black.cgColor
        // изменение размеров
        layer.frame = CGRect(x: 10, y: 10, width: 20, height: 20) // изменение радиуса скругления углов
        layer.cornerRadius = 10
        
        view.transform = CGAffineTransform(translationX: 100, y: 5)        // добавление в иерархию слоев
        view.layer.addSublayer(layer)
        
        view.transform = CGAffineTransform(rotationAngle: .pi/3).scaledBy(x: 2, y: 0.8).translatedBy(x: 50, y: 50)
        
        return view
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
