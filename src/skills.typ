#import "template.typ": section_title

#let tech = (
    "C#",
    "Go",
    "Java",
    "Jetpack Compose",
    "Kotlin",
    "Node.js",
    "React",
    "Rust",
    "SQL",
    "Swift",
    "SwiftUI",
    "Terraform",
    "TypeScript"
).sorted().join(", ")

#let tools = (
    "AWS",
    "Claude Code",
    "Cloudflare",
    "Cursor",
    "Docker",
    "GCP",
    "Git",
    "GitHub Actions",
    "GitLab CI",
    "Xcode"
).sorted().join(", ")

#let skills = {
    section_title("SKILLS")
    v(-5pt)
    align(left,
        list(
            indent: 0.25in,
            [Tech: ] + tech,
            [Tools: ] + tools
        )
    )
    v(5pt)
}
