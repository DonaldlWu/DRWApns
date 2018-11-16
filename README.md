# DRWApns

[![Swift](https://img.shields.io/badge/swift-4.1-blue.svg)](https://swift.org/)
[![Plateforms](https://img.shields.io/badge/platforms-macOS-green.svg)](https://en.wikipedia.org/wiki/Macintosh_operating_systems)
[![License](https://img.shields.io/badge/License-Apache-blue.svg)](https://www.apache.org/licenses/LICENSE-2.0)

Overview
--------

DRWApns is a tool let you can easily send push notification to your iOS device.

Require
--------

Xcode 9.2

Install
--------

###Homebrew
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
brew install DonaldlWu/homebrew-taps/drwapns
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Usage
--------

Move to ``/user/local/Cellar/drwapns/{release version}/bin`` folder and run DRWApns

<img width="359" alt="2018-11-16 2 30 11" src="https://user-images.githubusercontent.com/28559915/48602157-24c05a80-e9ad-11e8-94de-26ded21d242d.png">

###Parameter

DRWApns will require you to input

1. BundleId

2. Apns KeyIdentifier

3. TeamId of your apple developer account

4. .p8 file path in your computer

5. Is in production mode true/false(default: false)

6. DeviceIds (input device token separate by ,  p.s. No space)

7. Title of notification

8. Content of notification

Done

![2018-11-16 2 56 03](https://user-images.githubusercontent.com/28559915/48603005-0740c000-e9b0-11e8-9d6d-0e5d56c7dfee.png)

Future Work
------

Set custom payload