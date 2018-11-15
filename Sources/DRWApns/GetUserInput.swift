//
//  GetUserInput.swift
//  COpenSSL
//
//  Created by 吳得人 on 2018/11/15.
//

import Foundation
import ColorizeSwift

class GetUserInput {
    
    func filterUserInput(type: Input) {
        switch type {
        case .BundleId:
            print("Please enter bundleId\n" .bold().green())
            saveInput(type: .BundleId)
        case .KeyIdentifier:
            print("Please enter Key identifier\n" .bold().green())
            saveInput(type: .KeyIdentifier)
        case .TeamId:
            print("Please enter TeamId\n" .bold().green())
            saveInput(type: .TeamId)
        case .Path:
            print("Please enter .p8 file Path in your computer\n" .bold().green())
            saveInput(type: .Path)
        case .Production:
            print("Please select environment production enter: true, development enter: false" .bold().green())
            saveInput(type: .Production)
        case .DeviceIds:
            print("Please enter deviceIds, seprated by ," .bold().green())
            saveInput(type: .DeviceIds)
        case .Title:
            print("Please enter title of notification" .bold().green())
            saveInput(type: .Title)
        case .Content:
            print("Please enter notification content" .bold().green())
            saveInput(type: .Content)
        }
        
    }
    
    func saveInput(type: Input) {
        if let response = readLine() {
            switch type {
            case .BundleId:
                notificationsAppId = response
                print("bundleId saved as:",response .bold())
                print("\n")
            case .KeyIdentifier:
                apnsKeyIdentifier = response
                print("Key identifier saved as:",response .bold())
                print("\n")
            case .TeamId:
                apnsTeamIdentifier = response
                print("TeamId saved as:",response .bold())
                print("\n")
            case .Path:
                apnsPrivateKeyFilePath = response
                print(".p8 file Path saved as:",response .bold())
                print("\n")
            case .Production:
                isProduction = Bool(response) ?? false
                print("Is production :\(response)" .bold())
                print("\n")
            case .DeviceIds:
                deviceIds = response.components(separatedBy: ",")
                deviceIds.forEach({ print($0 .bold())})
                print("\n")
            case .Title:
                title = response
                print("Title: \(response)" .bold())
                print("\n")
            case .Content:
                content = response
                print("Context: \(response)" .bold())
                print("\n")
            }
        } else {
            print("Unknow Input")
        }
    }
    
}
