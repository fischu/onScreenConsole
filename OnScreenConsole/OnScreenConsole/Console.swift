//
//  Console.swift
//  OnScreenConsole
//
//  Created by Mihai Fischer on 16/02/2019.
//  Copyright © 2019 Mihai Fischer. All rights reserved.
//

import UIKit

public class OnScreenConsole: UITextView {
    
    //MARK: - Public Properties -
    public var showRowNumber:Bool = false
    
    public var lineElement: String = {
        return ">"
    }()
    
    //MARK: - Private Properties -
    private var lines:Array<Any> = []
    
}

public extension OnScreenConsole {
    
    //MARK: - Public methods -
    public func newLineWith(_ eventText:String) {
        lines.append(eventText)
        if showRowNumber {
            let rowNumber = lines.count
            
            if rowNumber == 1 {
                text = "\(rowNumber) \(lineElement)\(text ?? "") \(eventText)\n\(rowNumber+1) \(lineElement) "
            } else {
                text = "\(text ?? "") \(eventText)\n\(rowNumber+1) \(lineElement) "
            }
        } else {
            text = "\(text ?? "") \(eventText)\n\(lineElement)"
        }
        scrollTextViewToBottom()
    }
}

private extension OnScreenConsole {
    //MARK: - Private methods -
    private func scrollTextViewToBottom() {
        if self.text.count > 0 {
            let location = self.text.count - 1
            let bottom = NSMakeRange(location, 1)
            self.scrollRangeToVisible(bottom)
        }
    }
}

