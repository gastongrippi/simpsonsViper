//
//  QuotesListView.swift
//  SimpsonsViper
//
//  Created by Gaston Daniel Gabriel Grippi on 07/01/2020.
//  Copyright © 2020 Gaston Daniel Gabriel Grippi. All rights reserved.
//

import UIKit
import SnapKit

class QuotesListView: UIViewController, QuotesListViewProtocol {
      
    // MARK: Properties
    var quotesTable = UITableView(frame: .zero)
    var presenter: QuotesListPresenterProtocol?
    var quoteList = [Quote]()
    
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        addQuotesTableView()
        QuotesListRouter.createQuotesListModule(quotesView: self)
        presenter?.viewLoaded()
    }
    
    // MARK: QuotesListViewProtocol
    func showQuotes(with quotes: [Quote]) {
        quoteList = quotes
        quotesTable.reloadData()
    }
    
    // MARK: Private
    fileprivate func addQuotesTableView() {
        quotesTable.register(UITableViewCell.self, forCellReuseIdentifier: "quoteCell")
        quotesTable.delegate = self
        quotesTable.dataSource = self
        view.addSubview(quotesTable)
        
        quotesTable.snp.makeConstraints { (make) -> Void in
            make.edges.equalTo(view.snp.edges)
        }

    }
}

extension QuotesListView: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = quotesTable.dequeueReusableCell(withIdentifier: "quoteCell", for: indexPath)
        cell = UITableViewCell(style: .subtitle, reuseIdentifier: "quoteCell")
        
        let quote = quoteList[indexPath.row]
        cell.textLabel?.text = quote.character
        cell.detailTextLabel?.text = quote.quote
        cell.detailTextLabel?.numberOfLines = 0
        cell.detailTextLabel?.textColor = .blue
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return quoteList.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        presenter?.showFruitSelection(with: quoteList[indexPath.row], from: self)
    }
    
}
