//
//  HearingCareSearch.swift
//  hearingCare
//
//  Created by Wesley Araujo on 5/25/16.
//  Copyright © 2016 Lucas Freitas de Oliveira. All rights reserved.
//

import CoreSpotlight
import MobileCoreServices

class HearingCareSearch: NSObject {
    //public static let domainIdentifier = "FLTWY.hearingCare"
    func createItem(uniqueIdentifier: String, title: String, description: String) {
        
        // Criando um attibute set para um item que representa uma imagem
        let attributeSet = CSSearchableItemAttributeSet(itemContentType: kUTTypeImage as String)
        attributeSet.title = title
        attributeSet.contentDescription = description
        
        // Criando o item de busca
        let item = CSSearchableItem(uniqueIdentifier: uniqueIdentifier, domainIdentifier: "FLTWY.hearingCare", attributeSet: attributeSet)
        
        // Indexando o item
        CSSearchableIndex.defaultSearchableIndex().indexSearchableItems([item]) { (err: NSError?) -> Void in
            print("Indexado")
        }
    }
}
