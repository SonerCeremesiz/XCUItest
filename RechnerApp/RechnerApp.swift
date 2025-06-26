//
//  RechnerApp.swift
//  RechnerApp
//
//  Created by Murat on 30.06.25.
//

import AppIntents

struct RechnerApp: AppIntent {
    static var title: LocalizedStringResource { "RechnerApp" }
    
    func perform() async throws -> some IntentResult {
        return .result()
    }
}
