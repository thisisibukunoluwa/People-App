//
//  ViewController.swift
//  People-App
//
//  Created by Ibukunoluwa Akintobi on 18/12/2023.
//

import UIKit

class PeopleViewController: UIViewController {
    
    private lazy var subscribeBtn:UIButton = {
        var config = UIButton.Configuration.filled()
        config.title = "Subscribe".uppercased()
        config.baseBackgroundColor = .red
        config.baseForegroundColor = .white
        config.buttonSize = .large
        config.cornerStyle = .medium
        
        let btn = UIButton(configuration: config)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(didTapSubscribe), for: .touchUpInside)
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        // Do any additional setup after loading the view.
    }


}

private extension PeopleViewController {
    func setup(){
        self.view.backgroundColor = .white
        self.view.addSubview(subscribeBtn)
        /// autolayouts help us define constraints for our view in terms of where it is positioned on the screen
        /// translateAutoResizingMaskIntoConstraints is what will make your constraints take effect
        NSLayoutConstraint.activate([
            subscribeBtn.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            subscribeBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    @objc func didTapSubscribe(sender:UIButton) {
        print("i'm subscribing")
    }
}
