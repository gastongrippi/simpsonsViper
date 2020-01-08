//
//  QuotesListProtocols.swift
//  SimpsonsViper
//
//  Created by Gaston Daniel Gabriel Grippi on 07/01/2020.
//  Copyright © 2020 Gaston Daniel Gabriel Grippi. All rights reserved.
//

import UIKit

protocol QuotesListViewProtocol: class {
    // PRESENTER -> VIEW
    func showQuotes(with quotes: [Quote])
}

protocol QuotesListPresenterProtocol {
    // VIEW -> PRESENTER
    var interactor: QuotesListInputInteractorProtocol? {get set}
    var view: QuotesListViewProtocol? {get set}
    var router: QuotesListRouterProtocol? {get set}
    
    func viewLoaded()
    func showQuoteSelection(with quote: Quote, from viewController: UIViewController)
    func createQuotesListModule2(quotesView: QuotesListView)
}

protocol QuotesListInputInteractorProtocol {
    var presenter: QuotesListOutputInteractorProtocol? {get set}
    // PRESENTER -> INTERACTOR
    func getQuotesList()
    
}

protocol QuotesListOutputInteractorProtocol: class {
    // INTERACTOR -> PRESENTER
    func quotesListDidFetch(quoteList: [Quote])
}

protocol QuotesListRouterProtocol {
    // PRESENTER -> ROUTER
    static func createQuotesListModule(quotesView: QuotesListView, presenter: QuoteListPresenter)
    func pushToQuoteDetail(with quote: Quote, from viewController: UIViewController)
}
