//
//  TableViewCell.swift
//  BitcoinApp
//
//  Created by OSX on 18/08/24.
//

import UIKit

class TableViewCell: UITableViewCell {
    
     var buttonFavorite: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "heart"), for: .normal)
        button.addTarget(self, action: #selector(favorito), for: .touchUpInside)
         button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var nameUilabel: UILabel = {
        let label = UILabel()
//        label.text = "BTC/BUSD"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var subTitleUilabel: UILabel = {
        let label = UILabel()
//        label.text = "BITCOIN"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var priceUilabel: UILabel = {
        let label = UILabel()
//        label.text = "$54,382"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var imageBtc: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "btc")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        setupUiCell()
        // Configure the view for the selected state
    }
    
    func setupUiCell() {
        addSubview(nameUilabel)
        addSubview(subTitleUilabel)
        addSubview(priceUilabel)
        addSubview(imageBtc)
        addSubview(buttonFavorite)
        NSLayoutConstraint.activate([
            imageBtc.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            imageBtc.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            imageBtc.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20),
            imageBtc.heightAnchor.constraint(equalToConstant: 50),
            imageBtc.widthAnchor.constraint(equalToConstant: 50),
            
            nameUilabel.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            nameUilabel.leadingAnchor.constraint(equalTo: imageBtc.leadingAnchor, constant: 70),
            
            subTitleUilabel.topAnchor.constraint(equalTo: nameUilabel.topAnchor, constant: 5),
            subTitleUilabel.leadingAnchor.constraint(equalTo: imageBtc.leadingAnchor, constant: 70),
            subTitleUilabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -30),
            
//            priceUilabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            priceUilabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            priceUilabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5),
            
            buttonFavorite.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            buttonFavorite.heightAnchor.constraint(equalToConstant: 20),
            buttonFavorite.widthAnchor.constraint(equalToConstant: 20),
            buttonFavorite.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        ])
    }
    
    func configure(model: btcDetail){
        nameUilabel.text = model.name
        subTitleUilabel.text = model.symbol
        priceUilabel.text = "$\(model.priceUsd)"

    }
    
    @objc func favorito(){
        
        print("guardado en favorito")
    }

}
