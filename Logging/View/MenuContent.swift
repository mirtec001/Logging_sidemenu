//
//  MenuContent.swift
//  Logging
//
//  Created by Pete Misik on 12/23/20.
//

import Foundation
import SwiftUI

struct MenuContent: View {
    var body: some View {
        List {
            Text("Mission Forms")
            Text("Overview").onTapGesture {
                print("Overview")
            }
            Text("Mission Data").onTapGesture {
                print("Mission Data")
            }
            Text("Aircrew List").onTapGesture {
                print("Aircrew list")
            }
        }
    }
}
