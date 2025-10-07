#import "template.typ": section_title, section

#let ds_senior = {
    section(
        "Senior Software Engineer",
        org: "Direct Supply",
        "March 2024 – Present",
        bullets: (
            "Developed an LLM-powered AI feature that summarized years of historical facility reports, significantly reducing user preparation time, and proactively clarified inspection priorities before walk-throughs.",
            "Led the development of a PoC for an LLM-powered solution that completely automated a complex, manual image ingestion workflow. This automation recaptured an estimated 24 hours of human labor per cycle, significantly improving data accuracy and allowing staff to shift focus to core strategic priorities."
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
            "Modernized SMS/email delivery systems by adding alerting/monitoring, minimizing spam risk, and engineering redundant delivery mechanisms to ensure 99.9% availability, thereby preventing communication outages for business-critical systems."
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
            "Containerized legacy .NET services from shared EC2 Windows instances to serverless Linux containers via AWS ECS, lowering maintenance costs and reducing deployment time from 90 minutes to 5 minutes."
        )
    )
}

#let ds = {
    ds_senior
    ds_swe
    ds_intern
}

#let rebentify = {
    section(
        "Consultant",
        org: "Edlastics",
        "July 2021 – October 2021",
        bullets: (
            "Configured GCP Cloud Run and Firebase staging/production environments for secure, reproducible deployments by leveraging a single Docker image and config-based changes.",
            "Integrated Google Sign-In, enabling users to use their existing organization credentials to improve security and reduce organizational risk.",
            "Added client and server logging to proactively identify and prioritize bug fixes, decreasing average issue resolution time by 3 days."
        )
    )
}

#let experience = {
    section_title("EXPERIENCE")
    ds
    rebentify
}
