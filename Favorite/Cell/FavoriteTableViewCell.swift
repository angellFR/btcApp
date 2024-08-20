//
//  FavoriteTableViewCell.swift
//  BitcoinApp
//
//  Created by OSX on 20/08/24.
//

import UIKit

class FavoriteTableViewCell: UITableViewCell {
    
    var favoritoValidation = 0
    let contex = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    var nameUilabel: UILabel = {
        let label = UILabel()
        //        label.text = "BTC/BUSD"
        label.font = .systemFont(ofSize: 24)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var subTitleUilabel: UILabel = {
        let label = UILabel()
        //        label.text = "BITCOIN"
        label.font = .systemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var priceUilabel: UILabel = {
        let label = UILabel()
        //        label.text = "$54,382"
        label.font = .systemFont(ofSize: 24)
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
    }
    
    func setupUiCell() {
        addSubview(nameUilabel)
        addSubview(subTitleUilabel)
        addSubview(priceUilabel)
        addSubview(imageBtc)
        NSLayoutConstraint.activate([
            imageBtc.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            imageBtc.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            imageBtc.heightAnchor.constraint(equalToConstant: 50),
            imageBtc.widthAnchor.constraint(equalToConstant: 50),
            imageBtc.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            
            nameUilabel.topAnchor.constraint(equalTo: topAnchor, constant: 2),
            nameUilabel.leadingAnchor.constraint(equalTo: imageBtc.leadingAnchor, constant: 70),
            
            subTitleUilabel.topAnchor.constraint(equalTo: nameUilabel.bottomAnchor, constant: 1),
            subTitleUilabel.leadingAnchor.constraint(equalTo: imageBtc.leadingAnchor, constant: 70),
            subTitleUilabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            
            //            priceUilabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            priceUilabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            //            priceUilabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -1),
            
        ])
    }
    func configuration(model: BtcModel) {
        nameUilabel.text = model.name
        subTitleUilabel.text = model.symbol
        priceUilabel.text = model.priceUsd
    }
    
    @objc func DeleteFavorite(){
        
    }
}
