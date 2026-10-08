#import "template.typ": section_title, section

#let ds_senior = {
    section(
        "Senior Software Engineer",
        org: "Direct Supply",
        "March 2024 – Present",
        bullets: (
            "Automated image ingestion by pioneering an LLM proof-of-concept, saving 2,000+ hours of annual labor and cutting customer delays by 24 hours while eliminating legacy batch jobs to simplify the data pipeline.",
            "Developed an AI system for summarizing historical reports, saving ~2 hours of preparation time for site visit inspections, allowing users to quickly focus on recurring issues from previous reports.",
            "Paired with junior engineers and interns to develop their problem-solving and debugging skills with AWS microservices, enabling them to independently contribute to sprint work.",
            "Led the migration of native SwiftUI/Jetpack Compose apps to React Native in 2.5 months using Claude Code, unifying the codebase and enabling cross-functional teams to contribute without mobile expertise."
        )
    )
}

#let ds_swe = {
    section(
        "Software Engineer",
        org: "Direct Supply",
        "June 2021 – March 2024",
        bullets: (
            "Researched and migrated the iOS app to use Swift structured concurrency, reducing the 90-day crash rate by ~94% (from ~2,200 to ~130 crashes), significantly improving stability for ~35k monthly active users.",
            "Modernized SMS/email delivery systems with alerting/monitoring, minimizing spam risk, and engineering redundant delivery mechanisms to ensure 99.9% availability for critical business communications.",
            "Transitioned an unmaintainable, crash-prone VB6 admin tool to an AWS CloudFront React SPA, saving the operations team ~2 hours daily and accelerating customer resolution.",
            "Successfully migrated legacy .NET Framework monoliths to .NET Core, eliminating Windows-specific dependencies and enabling cross-platform Linux deployment."
        )
    )
}

#let edlastics = {
    section(
        "Full-Stack Engineer (Contract)",
        org: "Edlastics",
        "July 2021 – October 2021",
        bullets: (
            "Configured GCP Cloud Run and Firebase staging/production environments for secure, reproducible deployments by leveraging a single Docker image and config-based changes for several microservices.",
            "Implemented Google Sign-In utilizing OAuth 2.0, establishing centralized SSO to enforce corporate credential policies and enhance data security.",
            "Implemented client and server-side logging and alerting, enabling proactive bug triage and decreasing average issue resolution time by 1-3 days."
        )
    )
}

#let ds_intern = {
    section(
        "Software Engineer Intern",
        org: "Direct Supply",
        "June 2019 – June 2021",
        bullets: (
            "Built greenfield SwiftUI iOS app to replace legacy Xamarin app, massively cutting development/deployment time from a few days to a few hours, and added detailed logging and user action replay for monitoring.",
            "Containerized .NET services from shared EC2 Windows instances to AWS ECS serverless Linux containers, reducing deployment times by 94% (from 90 to 5 minutes) and slashing maintenance costs."
        )
    )
}

#let experience = {
    section_title("EXPERIENCE")
    ds_senior
    ds_swe
    edlastics
    ds_intern
}
