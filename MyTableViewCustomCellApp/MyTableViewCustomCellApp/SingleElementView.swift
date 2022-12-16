//
//  SingleElementView.swift
//  MyTableViewCustomCellApp
//
//  Created by Bharat Silavat on 16/12/22.
//

import UIKit

class SingleElementView: UIView {
    
    private lazy var titleLbl: UILabel = {
       let view = UILabel()
        view.textAlignment = .right
        return view
    }()
    
    private lazy var detailLbl: UILabel = {
        let view = UILabel()
        view.textAlignment = .left
        return view
    }()
    
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureSubviews()
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func configureSubviews() {
        self.addSubview(titleLbl)
        titleLbl.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleLbl.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 9),
            titleLbl.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            titleLbl.widthAnchor.constraint(lessThanOrEqualToConstant: self.frame.size.width/3),
            titleLbl.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        self.addSubview(detailLbl)
        detailLbl.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            detailLbl.leadingAnchor.constraint(equalTo: titleLbl.trailingAnchor, constant: 9),
            detailLbl.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -9),
            detailLbl.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            detailLbl.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    
    func setupView(with title: String, detail: String) {
        self.titleLbl.text = title + ": "
        self.detailLbl.text = detail
    }
    
    
    
}
