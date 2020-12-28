//
//  UIViewControllerBackground+extensions.swift
//  Migraine
//
//  Created by Asiye on 27.12.2020.
//

import UIKit

extension UIViewController {
    
    func backGroundOne() {
        
        clearBg()
        
        let imageView = UIImageView(image: UIImage(named: "gradientBg"))
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageView)
        imageView.tag = 105
        
        let constraintsOne = [imageView.topAnchor.constraint(equalTo: view.topAnchor), imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 5), imageView.leftAnchor.constraint(equalTo: view.leftAnchor), imageView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 5)]
        NSLayoutConstraint.activate(constraintsOne)
        
        let topImageview = UIImageView(image: UIImage(named: "topGradient"))
        view.addSubview(topImageview)
        topImageview.contentMode = .scaleToFill
        topImageview.translatesAutoresizingMaskIntoConstraints = false
        topImageview.tag = 104
        
        let constraintsTwo = [topImageview.topAnchor.constraint(equalTo: view.topAnchor), topImageview.leftAnchor.constraint(equalTo: view.leftAnchor), topImageview.rightAnchor.constraint(equalTo: view.rightAnchor), topImageview.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.6)]
        NSLayoutConstraint.activate(constraintsTwo)
        
       let smallCircleImageView = UIImageView(image: UIImage(named: "circleGradient"))
        view.addSubview(smallCircleImageView)
        smallCircleImageView.contentMode = .scaleAspectFit
        smallCircleImageView.translatesAutoresizingMaskIntoConstraints = false
        smallCircleImageView.tag = 103
        
        let constraintsThree = [smallCircleImageView.widthAnchor.constraint(equalToConstant: 24), smallCircleImageView.heightAnchor.constraint(equalToConstant: 24), smallCircleImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -view.frame.height / 15), smallCircleImageView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: view.frame.width / 7.5)]
        NSLayoutConstraint.activate(constraintsThree)
        
        let middleCircleImageView = UIImageView(image: UIImage(named: "circleGradient"))
        view.addSubview(middleCircleImageView)
        middleCircleImageView.contentMode = .scaleAspectFit
        middleCircleImageView.translatesAutoresizingMaskIntoConstraints = false
        middleCircleImageView.tag = 102
        
        let constraintsFour = [middleCircleImageView.widthAnchor.constraint(equalToConstant: 48), middleCircleImageView.heightAnchor.constraint(equalToConstant: 48), middleCircleImageView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: view.frame.width / 3.5), middleCircleImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -view.frame.height / 5)]
        NSLayoutConstraint.activate(constraintsFour)
        
        let rightImageView = UIImageView(image: UIImage(named: "circleGradient"))
        view.addSubview(rightImageView)
        rightImageView.contentMode = .scaleAspectFit
        rightImageView.translatesAutoresizingMaskIntoConstraints = false
        rightImageView.tag = 101
        
        let constraintsFive = [rightImageView.widthAnchor.constraint(equalToConstant: 48), rightImageView.heightAnchor.constraint(equalToConstant: 48), rightImageView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 16), rightImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -view.frame.height / 5)]
        NSLayoutConstraint.activate(constraintsFive)
        
        
        sendBgBack()
        
        
    }
    
    
    
    func backgroundTwo() {
        
        clearBg()
        
        let imageView = UIImageView(image: UIImage(named: "gradientBg"))
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageView)
        imageView.tag = 105
        
        let constraintsOne = [imageView.topAnchor.constraint(equalTo: view.topAnchor), imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 5), imageView.leftAnchor.constraint(equalTo: view.leftAnchor), imageView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 5)]
        NSLayoutConstraint.activate(constraintsOne)
        
        let topImageview = UIImageView(image: UIImage(named: "topGradient"))
        view.addSubview(topImageview)
        topImageview.contentMode = .scaleToFill
        topImageview.translatesAutoresizingMaskIntoConstraints = false
        topImageview.tag = 104
        
        let constraintsTwo = [topImageview.topAnchor.constraint(equalTo: view.topAnchor), topImageview.leftAnchor.constraint(equalTo: view.leftAnchor), topImageview.rightAnchor.constraint(equalTo: view.rightAnchor), topImageview.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.4)]
        NSLayoutConstraint.activate(constraintsTwo)
        
       let smallCircleImageView = UIImageView(image: UIImage(named: "circleGradient"))
        view.addSubview(smallCircleImageView)
        smallCircleImageView.contentMode = .scaleAspectFit
        smallCircleImageView.translatesAutoresizingMaskIntoConstraints = false
        smallCircleImageView.tag = 103
        
        let constraintsThree = [smallCircleImageView.widthAnchor.constraint(equalToConstant: 24), smallCircleImageView.heightAnchor.constraint(equalToConstant: 24), smallCircleImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -view.frame.height / 15), smallCircleImageView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -view.frame.width / 8.5)]
        NSLayoutConstraint.activate(constraintsThree)
        
        let middleCircleImageView = UIImageView(image: UIImage(named: "circleGradient"))
        view.addSubview(middleCircleImageView)
        middleCircleImageView.contentMode = .scaleAspectFit
        middleCircleImageView.translatesAutoresizingMaskIntoConstraints = false
        middleCircleImageView.tag = 102
        
        let constraintsFour = [middleCircleImageView.widthAnchor.constraint(equalToConstant: 48), middleCircleImageView.heightAnchor.constraint(equalToConstant: 48), middleCircleImageView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: -16), middleCircleImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -view.frame.height / 10)]
        NSLayoutConstraint.activate(constraintsFour)
        
        let rightImageView = UIImageView(image: UIImage(named: "circleGradient"))
        view.addSubview(rightImageView)
        rightImageView.contentMode = .scaleAspectFit
        rightImageView.translatesAutoresizingMaskIntoConstraints = false
        rightImageView.tag = 101
        
        let constraintsFive = [rightImageView.widthAnchor.constraint(equalToConstant: 48), rightImageView.heightAnchor.constraint(equalToConstant: 48), rightImageView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 16), rightImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -view.frame.height / 2)]
        NSLayoutConstraint.activate(constraintsFive)
        sendBgBack()
        
    }
    
    
    
    func backgroungThree() {
        clearBg()
        
        let imageView = UIImageView(image: UIImage(named: "gradientBg"))
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageView)
        imageView.tag = 105
        
        let constraintsOne = [imageView.topAnchor.constraint(equalTo: view.topAnchor), imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 5), imageView.leftAnchor.constraint(equalTo: view.leftAnchor), imageView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 5)]
        NSLayoutConstraint.activate(constraintsOne)
        
        let topImageview = UIImageView(image: UIImage(named: "topGradient"))
        view.addSubview(topImageview)
        topImageview.contentMode = .scaleToFill
        topImageview.translatesAutoresizingMaskIntoConstraints = false
        topImageview.tag = 104
        
        let constraintsTwo = [topImageview.topAnchor.constraint(equalTo: view.topAnchor), topImageview.leftAnchor.constraint(equalTo: view.leftAnchor), topImageview.rightAnchor.constraint(equalTo: view.rightAnchor), topImageview.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.15)]
        NSLayoutConstraint.activate(constraintsTwo)
        
     
        
        let rightImageView = UIImageView(image: UIImage(named: "circleGradient"))
        view.addSubview(rightImageView)
        rightImageView.contentMode = .scaleAspectFit
        rightImageView.translatesAutoresizingMaskIntoConstraints = false
        rightImageView.tag = 101
        
        let constraintsFive = [rightImageView.widthAnchor.constraint(equalToConstant: 48), rightImageView.heightAnchor.constraint(equalToConstant: 48), rightImageView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 16), rightImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: view.frame.height * 0.2)]
        NSLayoutConstraint.activate(constraintsFive)
        sendBgBack()
        
    }
    
    
    
    
    func clearBg() {
        for i in 101...105 {
            for j in view.subviews {
                if j.tag == i {
                    j.removeFromSuperview()
                }
            }
        }
    }
    
    func sendBgBack() {
        
        for i in 101...105 {
            for j in view.subviews {
                if j.tag == i {
                    view.sendSubviewToBack(j)
                }
            }
        }
    }
    
    
}


