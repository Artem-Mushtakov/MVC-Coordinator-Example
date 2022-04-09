//
//  MainView.swift
//  MVC-Coordinator-Example
//
//  Created by Artem Mushtakov on 08.04.2022.
//

import UIKit

class MainView: UIView {

    // MARK: - Properties

    weak var controller: MainViewInput?

    // MARK: - Initialization

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Live cycle

    override func layoutSubviews() {
        self.backgroundColor = .white
        super.layoutSubviews()
    }

    // MARK: - UI Elements

    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "HelveticaNeue-Bold", size: 25.0)
        label.textColor = .darkGray
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "5555"
        return label
    }()

    var startButton: UIButton = {
        let button = UIButton()
        button.setTitle("Start!", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor.systemBlue
        button.layer.cornerRadius = 10
        button.layer.shadowRadius = 5
        button.layer.shadowColor = UIColor.systemTeal.cgColor
        button.layer.shadowOpacity = 1.0
        button.layer.shadowOffset = CGSize(width: -1, height: 3)
        button.addTarget(self, action: #selector(startTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    // MARK: - Actions
    
    @objc func startTapped(_ sender: UIButton) {
        controller?.openSecond(sender)
    }


    // MARK: - Setup layout

    func setupView() {
        self.backgroundColor = .white
        self.addSubview(titleLabel)
        self.addSubview(startButton)
    }

    func setupConstraints() {

        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),

            startButton.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width / 3),
            startButton.heightAnchor.constraint(equalToConstant: 50),
            startButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            startButton.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
}

extension MainView: MainControllerOutput {

    func createTextLabel(title: String) {
        titleLabel.text = title
    }
}
