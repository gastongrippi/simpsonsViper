//
//  QuoteDetailView.swift
//  SimpsonsViper
//
//  Created by Gaston Daniel Gabriel Grippi on 08/01/2020.
//  Copyright © 2020 Gaston Daniel Gabriel Grippi. All rights reserved.
//

import UIKit
import SnapKit
import SDWebImage

class QuoteDetailView : UIViewController {
    // MARK: Properties
    var characterImage = UIImageView(frame: .zero)
    var quoteSelected: Quote
    
    init(quote: Quote) {
        quoteSelected = quote
        super.init(nibName:nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        addCharacterImage()
    }
    
    //MARK: Private
    fileprivate func addCharacterImage() {
        view.addSubview(characterImage)
        characterImage.sd_setImage(with: URL(string:quoteSelected.characterImage), completed: nil)
        characterImage.snp.makeConstraints { (make) -> Void in
            make.height.width.equalTo(250)
            make.center.equalTo(view)
        }
    }
}
