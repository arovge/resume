#import "template.typ": sect_title

#let technologies = (
    "C#",
    "Go",
    "Java",
    "Kotlin",
    "Node",
    "React",
    "Redux",
    "Rust",
    "SQL",
    "Swift",
    "SwiftUI",
    "Terraform",
    "TypeScript"
).join(", ")

#let tools = (
    "Adobe XD",
    "AWS",
    "Cloudflare",
    "Docker",
    "Firebase",
    "GCP",
    "Git",
    "GitHub Actions",
    "GitLab CI",
    "Xcode"
).join(", ")

#let skills = {
    sect_title("SKILLS")
    align(left,
        list(
            indent: 0.25in,
            [Technologies: ] + technologies,
            [Tools: ] + tools
        )
    )
    v(5pt)
}
