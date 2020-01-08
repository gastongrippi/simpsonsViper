//
//  QuotesListRouter.swift
//  SimpsonsViper
//
//  Created by Gaston Daniel Gabriel Grippi on 07/01/2020.
//  Copyright © 2020 Gaston Daniel Gabriel Grippi. All rights reserved.
//

import UIKit


class QuotesListRouter: QuotesListRouterProtocol {
    func pushToQuoteDetail(with quote: Quote, from viewController: UIViewController) {
        let quoteDetail = QuoteDetailView(quote: quote)
//        viewController.navigationController?.pushViewController(quoteDetail, animated: true)
        viewController.present(quoteDetail, animated: true, completion: nil)
    }
    

    class func createQuotesListModule(quotesView: QuotesListView, presenter: QuoteListPresenter) {
        quotesView.presenter = presenter
        quotesView.presenter.view = quotesView
        quotesView.presenter.interactor = QuotesListInteractor()
        quotesView.presenter.interactor?.presenter = presenter
        quotesView.presenter.router = QuotesListRouter()
    }
    
}
