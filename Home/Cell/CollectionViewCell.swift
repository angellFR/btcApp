//
//  CollectionViewCell.swift
//  BitcoinApp
//
//  Created by OSX on 19/08/24.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    var favoritoValidation = 0
    let contexto = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
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
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setupUiCell()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder: ) ")
    }
    
    func setupUiCell() {
        addSubview(nameUilabel)
        addSubview(subTitleUilabel)
        addSubview(priceUilabel)
        addSubview(imageBtc)
        addSubview(buttonFavorite)
        NSLayoutConstraint.activate([
            imageBtc.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            imageBtc.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            imageBtc.heightAnchor.constraint(equalToConstant: 50),
            imageBtc.widthAnchor.constraint(equalToConstant: 50),
            
            nameUilabel.topAnchor.constraint(equalTo: topAnchor, constant: 2),
            nameUilabel.leadingAnchor.constraint(equalTo: imageBtc.leadingAnchor, constant: 70),
            
            subTitleUilabel.topAnchor.constraint(equalTo: nameUilabel.bottomAnchor, constant: 1),
            subTitleUilabel.leadingAnchor.constraint(equalTo: imageBtc.leadingAnchor, constant: 70),
            priceUilabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),

            buttonFavorite.heightAnchor.constraint(equalToConstant: 30),
            buttonFavorite.widthAnchor.constraint(equalToConstant: 30),
            buttonFavorite.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            buttonFavorite.bottomAnchor.constraint(equalTo: bottomAnchor,constant: -2)
        ])
    }
    
    func configuration(model: btcDetail) {
        nameUilabel.text = model.name
        subTitleUilabel.text = model.symbol
        
        guard let number = Double(model.priceUsd) else { return }
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = 2
        formatter.roundingMode = .halfUp
        
        if let formattedNumber = formatter.string(from: NSNumber(value: number)) {
            priceUilabel.text = "$\(formattedNumber)"
        }
    }
        
    @objc func favorito(){
        
        let monedaFavorita = BtcModel(context: self.contexto)
        monedaFavorita.name = nameUilabel.text
        monedaFavorita.symbol = subTitleUilabel.text
        monedaFavorita.priceUsd = priceUilabel.text
        guardar()

        if favoritoValidation == 0 {
            favoritoValidation = 1
            buttonFavorite.setImage(UIImage(systemName: "heart.fill"), for: .normal)
            print("moneda favorita")
            
        } else {
            buttonFavorite.setImage(UIImage(systemName: "heart"), for: .normal)
            favoritoValidation = 0
        }
    }
    func guardar() {
        do {
            try contexto.save()
        } catch {
            print(error.localizedDescription)
        }
    }
}
