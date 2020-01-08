//
//  QuotesListRouter.swift
//  SimpsonsViper
//
//  Created by Gaston Daniel Gabriel Grippi on 07/01/2020.
//  Copyright © 2020 Gaston Daniel Gabriel Grippi. All rights reserved.
//

import UIKit


class QuotesListRouter: QuotesListRouterProtocol {
    
    class func createQuotesListModule(quotesView: QuotesListView) {
        let presenter: QuoteListPresenter & QuotesListOutputInteractorProtocol = QuoteListPresenter()
        
        quotesView.presenter = presenter
        quotesView.presenter?.view = quotesView
        quotesView.presenter?.interactor = QuotesListInteractor()
        quotesView.presenter?.interactor?.presenter = presenter
        quotesView.presenter?.router = QuotesListRouter()
    }
    
}
