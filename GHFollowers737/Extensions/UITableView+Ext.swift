//
//  UITableView+Ext.swift
//  GHFollowers737
//
//  Created by Jemo on 09.02.24.
//

import UIKit

extension UITableView {
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
