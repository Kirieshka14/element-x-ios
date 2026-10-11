//
// Copyright 2026 Kirieshka14 (fork of Element X iOS)
//
// SPDX-License-Identifier: AGPL-3.0-only OR LicenseRef-Element-Commercial.
// Please see LICENSE files in the repository root for full details.
//

import Foundation

/// Fork customization: an in-app language option.
///
/// `system` follows the device language; every other case maps to one of the
/// localization bundles shipped in `Resources/Localizations`. Custom community
/// languages (imported `.xlang` packs) will be added here in a later release.
struct AppLanguage: Identifiable, Equatable, Hashable {
    /// The localization bundle identifier, e.g. "ru", "uk", "en". `nil` means system language.
    let id: String?
    
    static let system = AppLanguage(id: nil)
    
    /// The display name as written in the language itself (endonyms, so each user
    /// can always find their language even if the interface is in another one).
    var displayName: String {
        switch id {
        case nil: return L10n.commonSystemDefault
        case "ru": return "Русский"
        case "uk": return "Українська"
        case "en", "en-US": return "English"
        case "es": return "Español"
        case "pt": return "Português"
        case "pt-BR": return "Português (Brasil)"
        case "de": return "Deutsch"
        case "fr": return "Français"
        case "it": return "Italiano"
        case "pl": return "Polski"
        case "tr": return "Türkçe"
        case "ar": return "العربية"
        case "fa": return "فارسی"
        case "ur": return "اردو"
        case "hi": return "हिन्दी"
        case "id": return "Bahasa Indonesia"
        case "zh-Hans": return "简体中文"
        case "zh-Hant-TW": return "繁體中文（台灣）"
        case "ja": return "日本語"
        case "ko": return "한국어"
        case "vi": return "Tiếng Việt"
        case "th": return "ไทย"
        case "nl": return "Nederlands"
        case "sv": return "Svenska"
        case "nb": return "Norsk bokmål"
        case "da": return "Dansk"
        case "fi": return "Suomi"
        case "is": return "Íslenska"
        case "cs": return "Čeština"
        case "sk": return "Slovenčina"
        case "hu": return "Magyar"
        case "ro": return "Română"
        case "bg": return "Български"
        case "el": return "Ελληνικά"
        case "et": return "Eesti"
        case "lv": return "Latviešu"
        case "lt": return "Lietuvių"
        case "be": return "Беларуская"
        case "ca": return "Català"
        case "eu": return "Euskara"
        case "cy": return "Cymraeg"
        case "ga": return "Gaeilge"
        case "hr": return "Hrvatski"
        case "sr": return "Српски"
        case "sl": return "Slovenščina"
        case "he": return "עברית"
        case "ka": return "ქართული"
        case "uz": return "Oʻzbekcha"
        case "sw": return "Kiswahili"
        case "af": return "Afrikaans"
        case "ms": return "Bahasa Melayu"
        default: return id ?? ""
        }
    }
    
    /// The language options offered in the settings screen. The most requested ones
    /// come first; the rest follow alphabetically by display name.
    static let all: [AppLanguage] = [
        .system,
        AppLanguage(id: "ru"),
        AppLanguage(id: "uk"),
        AppLanguage(id: "en"),
        AppLanguage(id: "es"),
        AppLanguage(id: "pt-BR"),
        AppLanguage(id: "de"),
        AppLanguage(id: "fr"),
        AppLanguage(id: "it"),
        AppLanguage(id: "pl"),
        AppLanguage(id: "tr"),
        AppLanguage(id: "id"),
        AppLanguage(id: "zh-Hans"),
        AppLanguage(id: "ja"),
        AppLanguage(id: "ko"),
        AppLanguage(id: "hi"),
        AppLanguage(id: "ar"),
        AppLanguage(id: "fa"),
        AppLanguage(id: "vi"),
        AppLanguage(id: "th"),
        AppLanguage(id: "nl"),
        AppLanguage(id: "sv"),
        AppLanguage(id: "nb"),
        AppLanguage(id: "da"),
        AppLanguage(id: "fi"),
        AppLanguage(id: "cs"),
        AppLanguage(id: "sk"),
        AppLanguage(id: "hu"),
        AppLanguage(id: "ro"),
        AppLanguage(id: "bg"),
        AppLanguage(id: "el"),
        AppLanguage(id: "et"),
        AppLanguage(id: "lt"),
        AppLanguage(id: "be"),
        AppLanguage(id: "ca"),
        AppLanguage(id: "eu"),
        AppLanguage(id: "cy"),
        AppLanguage(id: "hr"),
        AppLanguage(id: "ka"),
        AppLanguage(id: "uz"),
        AppLanguage(id: "ur"),
    ]
}
