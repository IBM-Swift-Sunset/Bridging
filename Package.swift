//
//  Package.swift
//  Bridging
//
//  Created by Shmuel Kallner on 01/31/2016
//

import PackageDescription

let package = Package(
    name: "Bridging",
          targets: [
            Target(
                name: "Bridging",
                dependencies: [])
    ],
    dependencies: [ ],
    testDependencies: [
        .Package(url: "git@github.ibm.com:ibmswift/PhoenixTestFramework.git", majorVersion: 0)
        ]
)

