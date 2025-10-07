#import "template.typ": section_title

-- FUTURE:
-- .sorted() currently (0.13.1) has no way to
-- do a case-insensitive sort.
-- Which leads to 'AWS' preceeding 'Android Studio'.
-- When touching this again, check to see if this functionality
-- is now available. Else, be careful with ordering.
#let tech = (
    "C",
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
).sorted(key: it => it).join(", ")

-- FUTURE:
-- .sorted() currently (0.13.1) has no way to
-- do a case-insensitive sort.
-- Which leads to 'AWS' preceeding 'Android Studio'.
-- When touching this again, check to see if this functionality
-- is now available. Else, be careful with ordering.
#let tools = (
    "Android Studio",
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
).join(", ")

#let skills = {
    section_title("TECH & TOOLS")
    v(-5pt)
    align(left,
        list(
            indent: 0.25in,
            tech,
            tools
        )
    )
    v(5pt)
}
