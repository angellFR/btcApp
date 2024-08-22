//
//  Entity.swift
//  BitcoinApp
//
//  Created by OSX on 15/08/24.
//


//{
//    "data": [
//        {
//            "id": "bitcoin",
//            "rank": "1",
//            "symbol": "BTC",
//            "name": "Bitcoin",
//            "supply": "19741278.0000000000000000",
//            "maxSupply": "21000000.0000000000000000",
//            "marketCapUsd": "1175075129816.7515760662165406",
//            "volumeUsd24Hr": "6738331627.7459772899114170",
//            "priceUsd": "59523.7618261974516577",
//            "changePercent24Hr": "0.6722723101023222",
//            "vwap24Hr": "59291.3820887107047241",
//            "explorer": "https://blockchain.info/"
//        },

import Foundation

//struct Result: Decodable {
//    let data: [[String: String?]]
//    let timestamp: Int
//}
//
//struct Data: Decodable {
//    var id: String
//    var rank: String
//    var symbol:
//}


//struct Peticiones: Decodable {
//    var data: [Peticion]
//
//}
//
//struct Peticion: Decodable {
//    var id: String
//    var rank: String
//    var symbol: String
//    var name: String
//    var supply: String
//    var maxSupply: String
//    var marketCapUsd: String
//    var volumeUsd24Hr: String
//    var priceUsd: String
//    var vwap24Hr: String
//    var explorer: String
//    
//}
//
//
//struct Peticiones: Decodable {
//    let data: [[Peticion]]
//    let timestamp: Int
//
//    enum CodingKeys: String, CodingKey {
//        case data = "data"
//        case timestamp = "timestamp"
//    }
//}


//struct Peticiones: Decodable, Identifiable {
//    let id: Int
//    let attack: Int
//    let name: String
//    let imageUrl: String
//    let defense: Int
//    let description: String
//    let type: String
//    
//}

//struct Peticiones: Decodable, Identifiable {
//    let id: String
//    let rank: String
//    let symbol: String
//    let name: String
//    let supply: String
//    let maxSupply: String?
//    let marketCapUsd: String
//    let volumeUsd24Hr: String
//    let priceUsd: String
//    let changePercent24Hr: String
//    let vwap24Hr: String
//}
//
//// Modelo para la respuesta completa de la API
//struct Peticion: Decodable {
//    let data: [Peticiones]
//    let timestamp: Int
//}


struct btcModelo: Codable {
    var data: [btcDetail]
}

struct btcDetail: Codable{
    let id: String
    let rank: String
    let symbol: String
    let name: String
    let priceUsd: String  
}


