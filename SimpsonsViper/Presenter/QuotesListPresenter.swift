//
//  QuotesListPresenter.swift
//  SimpsonsViper
//
//  Created by Gaston Daniel Gabriel Grippi on 07/01/2020.
//  Copyright © 2020 Gaston Daniel Gabriel Grippi. All rights reserved.
//

import UIKit

class QuoteListPresenter: QuotesListPresenterProtocol {
    
    // MARK: Properties
    var interactor: QuotesListInputInteractorProtocol?
    weak var view: QuotesListViewProtocol?
    var router: QuotesListRouterProtocol?
    
    
    // MARK: QuotesListPresenterProtocol
    func viewLoaded() {
        interactor?.getQuotesList()
    }
    
    func showQuoteSelection(with quote: Quote, from view: UIViewController) {
        
    }
    
    
}

// MARK: QuotesListOutputInteractorProtocol
extension QuoteListPresenter: QuotesListOutputInteractorProtocol {
    func quotesListDidFetch(quoteList: [Quote]) {
        view?.showQuotes(with: quoteList)
    }

}
