//
//  Number.swift
//  try
//
//  Created by serif mete on 29.01.2023.
//


import Foundation

// MARK: - Joke
struct joke: Decodable {
    let attachments: [Attachment]?
    

    enum CodingKeys: String, CodingKey {
        case attachments
    }
}

// MARK: - Attachment
struct Attachment: Decodable {
    let fallback, footer, text: String?
    
}


