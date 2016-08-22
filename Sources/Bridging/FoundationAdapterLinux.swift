/**
 * Copyright IBM Corporation 2016
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 **/

import Foundation

#if os(Linux)
public class FoundationAdapter: FoundationAdapterProtocol {
    public static func getPath(from url: URL) -> String? {
        return url.path
    }
    public static func deletingLastPathComponent(from url: URL) -> URL {
        do {
            return try url.deletingLastPathComponent()
        } catch {
            print("Got error from URL.deletingLastPathComponent(): \(error)")
            // this is how the error will be handled in 08.15 snapshot
            return url
        }
    }
}
#endif
