//
//  DetailsViewController.swift
//  Assignment4
//
//  Created by 桑染 on 2020-04-23.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    var city: City!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .equalSpacing
        view.addSubview(stackView)
        
        stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 150).isActive = true
        stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -150).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        
        let countryLabel = UILabel()
        countryLabel.text = "Country"
        countryLabel.textAlignment = .center
        
        let countryLabelDetail = UIImageView(image: UIImage(named: city.icon))
        
        let cityLabel = UILabel()
        cityLabel.text = "City"
        cityLabel.textAlignment = .center
        
        let cityLabelDetail = UILabel()
        cityLabelDetail.text = city.name
        cityLabelDetail.textAlignment = .center
        
        let tempLabel = UILabel()
        tempLabel.text = "Temperature"
        tempLabel.textAlignment = .center
        
        let tempLabelDetail = UILabel()
        tempLabelDetail.text = "\(city.temp)"
        tempLabelDetail.textAlignment = .center
        
        let summaryLabel = UILabel()
        summaryLabel.text = "Summary"
        summaryLabel.textAlignment = .center
        
        let summaryLabelDetail = UILabel()
        summaryLabelDetail.text = city.summary
        summaryLabelDetail.textAlignment = .center
        
        stackView.addArrangedSubview(countryLabel)
        stackView.addArrangedSubview(countryLabelDetail)
        stackView.addArrangedSubview(cityLabel)
        stackView.addArrangedSubview(cityLabelDetail)
        stackView.addArrangedSubview(tempLabel)
        stackView.addArrangedSubview(tempLabelDetail)
        stackView.addArrangedSubview(summaryLabel)
        stackView.addArrangedSubview(summaryLabelDetail)
    }
}

