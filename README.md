# Bridging

From https://github.com/apple/swift-corelibs-foundation/blob/e579dcd0b82dc40e9fe6596b4a5209ece2ba4166/Docs/Issues.md :

> NSDictionary, NSArray, NSSet and NSString are not yet implicitly convertible to Dictionary, Array, Set, and String. In order to translate between these types, we have temporarily added a protocol to these types that allows them to be converted. There is one method called `bridge()`.
```swift
let myArray: NSArray = ["foo", "bar", "baz"].bridge()
```
... <br /> These limitations should hopefully be very short-term.

In order to compile code that calls `bridge()` functions both on Linux and on other platforms, we provide extensions to NSDictionary, NSArray, NSSet and NSString, to add bridge() functions on non-Linux platforms.

## License

This library is licensed under Apache 2.0. Full license text is available in [LICENSE](LICENSE.txt).
