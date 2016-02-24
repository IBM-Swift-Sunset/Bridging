# Bridging
A single place to put the definitions of the various bridge() functions, to enable Swift Linux code with bridge() functions to compile on OS X.

From https://github.com/apple/swift-corelibs-foundation/blob/e579dcd0b82dc40e9fe6596b4a5209ece2ba4166/Docs/Issues.md :

> NSDictionary, NSArray, NSSet and NSString are not yet implicitly convertible to Dictionary, Array, Set, and String. In order to translate between these types, we have temporarily added a protocol to these types that allows them to be converted. There is one method called `bridge()`.
```swift
let myArray: NSArray = ["foo", "bar", "baz"].bridge()
```
... <br /> These limitations should hopefully be very short-term.

In order to compile code that calls `bridge()` functions on Linux and on other platforms, we provide extensions to NSDictionary, NSArray, NSSet and NSString, to add bridge() functions on non Linux platforms.
