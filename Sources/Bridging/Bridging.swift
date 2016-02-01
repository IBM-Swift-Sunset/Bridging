//
//  Bridging.swift
//
//  Created by Samuel Kallner on 01/31/2016
//
//

// This file defines on OSX and iOS the various bridge() functions that are currently
// only defined in the Linux version of Foundation

#if os(OSX) || os(iOS)

    import Foundation

    // Array related bridge() functions

//    extension Array {
//        public func bridge() -> NSArray {
//            return NSArray(array: map { return $0 as Any } )
//        }
//    }

    extension NSArray {
        public func bridge() -> Array<AnyObject> {
            return self as Array<AnyObject>
        }
    }


    // Dictionary related bridge() functions

//    extension Dictionary {
//        public func bridge() -> NSDictionary {
//            return [NSObject : AnyObject](dictionaryLiteral: self)
//        }
//    }

    extension NSDictionary {
        public func bridge() -> [NSObject: AnyObject] {
            return self as [NSObject: AnyObject]
        }
    }


    // String related bridge() functions

    public extension String {
        func bridge() -> NSString {
            return self as NSString
        }
    }

    public extension NSString {
        func bridge() -> String {
            return self as String
        }
    }
    
#endif
