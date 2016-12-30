//
//  main.swift
//  notification
//
//  Created by Kilian Költzsch on 30/12/2016.
//  Copyright © 2016 Kilian Koeltzsch. All rights reserved.
//

import Foundation

class Notification {
    var name: NSNotification.Name?

    init(notificationName: String? = nil) {
        if let notificationName = notificationName {
            name = NSNotification.Name(notificationName)
        } else {
            name = nil
        }
        DistributedNotificationCenter.default().addObserver(self, selector: #selector(receive), name: name, object: nil)
    }

    deinit {
        DistributedNotificationCenter.default().removeObserver(self, name: name, object: nil)
    }

    @objc func receive(notification: NSNotification) {
        print(notification)
    }
}

let n = CommandLine.arguments.count > 1 ? Notification(notificationName: CommandLine.arguments[1]) : Notification()
RunLoop.main.run(until: Date.distantFuture)
