//
//  Model.swift
//  COpenSSL
//
//  Created by 吳得人 on 2018/11/15.
//

import Foundation

enum Input: Int {
    case BundleId = 0,
    KeyIdentifier,
    TeamId,
    Path,
    Production,
    DeviceIds,
    Title,
    Content
}

var notificationsAppId = ""
var apnsKeyIdentifier = ""
var apnsTeamIdentifier = ""
var apnsPrivateKeyFilePath = ""
var isProduction = false
var deviceIds:[String] = [""]
var title = ""
var content = ""
