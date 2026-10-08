#import "template.typ": section_title

#let tech = "Tech: " + (
    "C",
    "C#",
    "Docker",
    "Go",
    "Java",
    "MSSQL/PostgreSQL/SQL",
    ".NET",
    "Node.js",
    "React",
    "Rust",
    "Terraform",
    "TypeScript"
).sorted(key: it => lower(it)).join(", ")

#let tools = "Tools: " + (
    "AWS",
    "Codex",
    "Claude Code",
    "Cloudflare",
    "Google Cloud",
    "Git",
    "GitHub Actions",
    "GitLab CI",
    "GitHub Copilot"
).sorted(key: it => lower(it)).join(", ")

#let mobile = "Mobile: " + (
    "Android Studio",
    "Expo",
    "Fastlane",
    "Firebase",
    "Jetpack Compose",
    "Kotlin",
    "React Native",
    "Swift",
    "SwiftUI",
    "Xcode"
).sorted(key: it => lower(it)).join(", ")

#let tech_tools = {
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
