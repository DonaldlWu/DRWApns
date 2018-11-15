
import Foundation
import PerfectNotifications
import ColorizeSwift

let getInput = GetUserInput()
let array:[Input] = [.BundleId,
                    .KeyIdentifier,
                    .TeamId,
                    .Path,
                    .Production,
                    .DeviceIds,
                    .Title,
                    .Content]

array.forEach {
    getInput.filterUserInput(type: $0)
}

NotificationPusher.addConfigurationAPNS(
    name: notificationsAppId,
    // production parameter should be false when running pre-release app in debugger
    production: isProduction,
    keyId: apnsKeyIdentifier,
    teamId: apnsTeamIdentifier,
    privateKeyPath: apnsPrivateKeyFilePath)

    let custom = ["content": "body"]
    let n = NotificationPusher(apnsTopic: notificationsAppId)
    n.pushAPNS(
    configurationName: notificationsAppId,
    deviceTokens: deviceIds,
    notificationItems: [ .alertTitle("\(title)"),
                         .alertBody("\(content)"),
                         .customPayload("custom", custom),
                         .sound("default")]) {
        responses in
        print("\(responses)" .bold().blue())
    }

dispatchMain()
