#import "template.typ": sect_title, sect

#let ds = {
    sect(
        ("Senior Software Engineer", "Software Engineer", "Software Engineer Intern").join("\n"),
        "Direct Supply",
        ("March 2024 – Present", "June 2021 – March 2024", "June 2019 – June 2021").join("\n"),
        "Milwaukee, WI",
        bullets: (
            "Assisted building and maintaing greenfield iOS application written in SwiftUI to replace legacy Xamarin application, reducing crash rate from 9% to < 1%, reducing time for local development and time to ship a new version of the app, and added thorough logging to the application to make errors actionable for development team.",
            "Containerized legacy C# applications to run in serverless AWS Fargate, moved secrets to HashiCorp Vault, and created infrastructure to route traffic securely between Route53, ALB, and the ECS cluster, resulting in lowered maintenance costs and more resilient error handling.",
            "Researched and introduced Swift structured concurrency to the iOS app, reducing the 90-day crash rate by ~94% from ~2,200 crashes to ~130 crashes, improving user experience and app stability for the iOS app with ~25k monthly users."
        )
    )
}

#let rebentify = {
    sect(
        "Consultant",
        "Rebentify Technologies",
        "July 2021 – October 2021",
        "Milwaukee, WI",
        bullets: (
            "Setup staging and production environments in GCP Cloud Run and Firebase, enabling CD and ensuring a single Docker image was shared across tiers with only config changes, therefore facilitating production-reproducible behavior between tiers.",
            "Swapped user authentication to Google Sign-In, removing the need to maintain a separate set of credentials for the users resulting in increased security and less organization risk.",
            "Introduced front-end and API logging capabilities to give insight into errors and prioritize bug fixes before users could report an issue using the product."
        )
    )
}

#let experience = {
    sect_title("EXPERIENCE")
    ds
    rebentify
}
