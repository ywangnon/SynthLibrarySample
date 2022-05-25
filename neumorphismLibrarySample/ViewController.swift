//
//  ViewController.swift
//  neumorphismLibrarySample
//
//  Created by Hansub Yoo on 2022/05/25.
//

import UIKit
import Synth

class ViewController: UIViewController {
    
    var neuView: UIView = {
        let view = UIView()
        view.backgroundColor = .secondarySystemBackground
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 20
        return view
    }()
    
    var neuButton1: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var neuButton2: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var neuButton3: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var neuButton4: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setAddSubViews()
        self.setLayouts()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.neuView.applyNeuStyle(model: NeuUIHelper.getDebossModel(), showOnlyShadows: false)
//        self.neuView.applyNeuStyle()
        self.neuButton1.applyNeuBtnStyle(type: .elevatedSoft, title: "Soft")
        self.neuButton2.applyNeuBtnStyle(type: .elevatedSoftRound, image: UIImage(named: "plus"))
        self.neuButton3.applyNeuBtnStyle(type: .elevatedFlat, title: "Flat")
        self.neuButton4.applyNeuBtnStyle(type: .elevatedFlatRound)
    }
    
    func setAddSubViews() {
        
        self.view.backgroundColor = NeuUtils.baseColor
        
        self.view.addSubview(self.neuView)
        self.view.addSubview(self.neuButton1)
        self.view.addSubview(self.neuButton2)
        self.view.addSubview(self.neuButton3)
        self.view.addSubview(self.neuButton4)
    }
    
    func setLayouts() {
        let safeArea = self.view.safeAreaLayoutGuide
        
        NSLayoutConstraint.activate([
            self.neuView.widthAnchor.constraint(equalToConstant: 200),
            self.neuView.heightAnchor.constraint(equalToConstant: 40),
            self.neuView.centerYAnchor.constraint(equalTo: safeArea.centerYAnchor),
            self.neuView.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            self.neuButton1.widthAnchor.constraint(equalToConstant: 100),
            self.neuButton1.heightAnchor.constraint(equalToConstant: 40),
            self.neuButton1.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor),
            self.neuButton1.topAnchor.constraint(equalTo: self.neuView.bottomAnchor, constant: 16)
        ])
        
        NSLayoutConstraint.activate([
            self.neuButton2.widthAnchor.constraint(equalToConstant: 40),
            self.neuButton2.heightAnchor.constraint(equalToConstant: 40),
            self.neuButton2.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor),
            self.neuButton2.topAnchor.constraint(equalTo: neuButton1.bottomAnchor, constant: 16)
        ])
        
        NSLayoutConstraint.activate([
            self.neuButton3.widthAnchor.constraint(equalToConstant: 100),
            self.neuButton3.heightAnchor.constraint(equalToConstant: 40),
            self.neuButton3.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor),
            self.neuButton3.topAnchor.constraint(equalTo: neuButton2.bottomAnchor, constant: 16)
        ])
        
        NSLayoutConstraint.activate([
            self.neuButton4.widthAnchor.constraint(equalToConstant: 100),
            self.neuButton4.heightAnchor.constraint(equalToConstant: 40),
            self.neuButton4.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor),
            self.neuButton4.topAnchor.constraint(equalTo: neuButton3.bottomAnchor, constant: 16)
        ])
    }
}

