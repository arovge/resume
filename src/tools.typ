#import "template.typ": section_title

// FUTURE:
// Typst currently (0.13.1) has no way to do a
// case-insensitive sort. This leads to 'AWS'
// preceding 'Android Studio'. When touching this again,
// check to see if this functionality is now available.
// Else, be careful with ordering.
#let tech = (
    "C",
    "C#",
    "Go",
    "Java",
    "Node.js",
    "React",
    "Rust",
    "SQL",
    "Terraform",
    "TypeScript"
).sorted(key: it => it).join(", ")

// FUTURE:
// Typst currently (0.13.1) has no way to do a
// case-insensitive sort. This leads to 'AWS'
// preceding 'Android Studio'. When touching this again,
// check to see if this functionality is now available.
// Else, be careful with ordering.
#let tools = "Tools: " + (
    "AWS",
    "Codex",
    "Claude Code",
    "Cloudflare",
    "Docker",
    "Google Cloud",
    "Git",
    "GitHub Actions",
    "GitLab CI",
    "GitHub Copilot"
).join(", ")

// FUTURE:
// Typst currently (0.13.1) has no way to do a
// case-insensitive sort. This leads to 'AWS'
// preceding 'Android Studio'. When touching this again,
// check to see if this functionality is now available.
// Else, be careful with ordering.
#let mobile = "Mobile: " + (
    "Android Studio",
    "Expo",
    "Jetpack Compose",
    "Kotlin",
    "React Native"
    "Swift",
    "SwiftUI",
    "Xcode"
).join(", ")

#let tools = {
    section_title("TECH & TOOLS")
    v(-5pt)
    align(left,
        list(
            indent: 0.25in,
            tech,
            tools,
            mobile
        )
    )
}
