//
//  ZisTableView.swift
//  Pods-Example
//
//  Created by Fauzi Sho on 24/09/18.
//

import Foundation


open class ZisSettingView: UITableViewController {
    open var entries: [[[ZisKeyType:Any?]]] = [[]]
    
    // MARK: - UITableViewDataSource
    
    override open func numberOfSections(in tableView: UITableView) -> Int {
        return entries.count
    }
    
    override open func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return entries[section].count
    }
    
    override open func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let entry = entries[indexPath.section][indexPath.row]
        
        var identifier = "SettingCell"
        var cellStyle = UITableViewCellStyle.default
        
        if let cellType =  entry[.cellType] as? UITableViewCellStyle {
            cellStyle = cellType
            identifier = identifier + "\(cellType.rawValue)"
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier) ?? UITableViewCell(style: cellStyle, reuseIdentifier: identifier)
        
        if let title = entry[.title] as? String {
            cell.textLabel?.text = title
        }
        
        if cellStyle == UITableViewCellStyle.subtitle {
            cell.textLabel?.font = UIFont.systemFont(ofSize: 11.0)
        }
        
        if let subtitle = entry[.subtitle] as? String {
            cell.detailTextLabel?.text = subtitle
        } else if let subtitleClosure = entry[.subtitle] as? () -> String? {
            cell.detailTextLabel?.text = subtitleClosure()
        }
        
        if cellStyle == UITableViewCellStyle.subtitle {
            cell.detailTextLabel?.font = UIFont.systemFont(ofSize: 16.0)
        }
        
        if let imageName = entry[.image] as? String {
            cell.imageView?.image = UIImage(named: imageName)
        }
        
        if let accessoryType = entry[.accessoryType] as? UITableViewCellAccessoryType {
            cell.accessoryType = accessoryType
        }
        
        if let accessoryView = entry[.accessoryView] as? UIView {
            cell.accessoryView = accessoryView
        }
        
        return cell
    }
    
    
    open override func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        let entry = entries[indexPath.section][indexPath.row]
        
        if let accessoryAction = entry[.accessoryAction] as? () -> () {
            accessoryAction()
        }
    }
    
    // MARK: - UITableViewDelegate
    
    override open func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.01
    }
    
    override open func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let entry = entries[indexPath.section][indexPath.row]
        
        if let cellAction = entry[.cellAction] as? () -> () {
            cellAction()
        }
    }
}
