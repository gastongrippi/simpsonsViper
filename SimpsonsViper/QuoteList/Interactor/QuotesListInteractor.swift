//
//  QuotesListInteractor.swift
//  SimpsonsViper
//
//  Created by Gaston Daniel Gabriel Grippi on 07/01/2020.
//  Copyright © 2020 Gaston Daniel Gabriel Grippi. All rights reserved.
//

class QuotesListInteractor: QuotesListInputInteractorProtocol {
    
    // MARK: Properties
    weak var presenter: QuotesListOutputInteractorProtocol?

    // MARK: QuotesListInputInteractorProtocol
    func getQuotesList() {
        // TO DO: Add logic to get quotes list from network request
        presenter?.quotesListDidFetch(quoteList: getAllQuotesDetail())
    }
    
    func getAllQuotesDetail() -> [Quote] {
        var quotesList = [Quote]()
        let allQuoteDetail =  CommonData.generateDataList()
        for item in allQuoteDetail {
            quotesList.append(Quote(attributes: item))
        }
        
        return quotesList
    }
    
}
