//
//  Copyright (c) 2015 Google Inc.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import UIKit
import Firebase.Core

@objc(ViewController)  // match the ObjC symbol name inside Storyboard
class ViewController: UIViewController {

  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(true)

    let name = "Pattern~\(title!)"

    // [START screen_view_hit_swift]
    GMRAppMeasurement.logEventWithName(kGMREventViewContent,
      parameters: [
        kGMRParameterProductID : title!,
        kGMRParameterProductName : name,
        kGMRParameterProductCategory : "pattern",
      ])
    // [END screen_view_hit_swift]
  }

}