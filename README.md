# resume

My resume as code

### How parsable is this for an ATS (applicant tracking system)?

No clue. Hopefully parseable, otherwise I wasted a lot of time on this. I'll update when I start using it.

### Local Development

Typst is required. It's installation guide can be found in [the typst/typst GitHub repository](https://github.com/typst/typst?tab=readme-ov-file#installation).

To build, your system will need to have `GNU Make` to use make files.

The PDF (and build artifacts) can be generated with:

```bash
$ make all
```

The PDF (and build artifacts) can be deleted with:

```bash
$ make clean
```

### Pull Requests

On each pull request, CI will run and make sure that the PDF can be successfully built. It will also upload the new PDF to cloud storage and add a comment with a conveinient link to the built PDF for easy viewing.

When the PR is merged, the PDF is deleted from cloud storage.

### Release process

Using the GitHub release interface:

1. Draft a new release
2. Create a tag for the release
    * This somewhat follows semver for how big the changes made are
3. Generate release notes for the release

This will kick off GitHub actions to:

1. Create a new release for the pushed tag
2. Build the resume PDF and attach it to the release
3. Update cloud storage so the PDF can be reached via https://api.ajr.dev/files/austin-rovge-resume.pdf

### Why is this so complicated?

This is more complicated that I would have liked it to be. This project started with me wanting to be able to have my resume as code and have a GitHub runner build a new PDF of it when any changes have been made. The latest resume build would then be accessible on `ajr.dev` via a static link. However, for any assets that are attached to a GitHub release, they will be downloaded without the option to view the document in the browser

Here are the options I thought of for getting around this (in order of increasing complexity):

1. Store the built PDF in a `latest` GitHub branch
    * To me, tags do the same thing as release branches except they're immutable. Any release pipeline to a testing/prod environment can be a pipeline run off of each tag. So in using tags vs a release branch, this option felt like doing both. Using both a GitHub release to show the different iterations and a `release` branch just so I could view the PDF artifact in the browser felt off
2. Use GitHub repository webhook to trigger the `ajr.dev` build pipeline to push a new update
    * `ajr.dev` uses Cloudflare pags so this can be done easily. But this would require a simple script as a build step to download the latest PDF. I didn't want to couple the other projects build pipelines or to have a release of `resume` mean a deployment of `ajr.dev` would happen. What if this release failed? I didn't like coupling projects build pipelines and having one trigger automatically
3. Client side JS on ajr.dev to go to a static url, download a file, then open it in a new tab in the users browser.
    * Probably possible, but I just want to have a static link in the browser. I don't want to edit `ajr.dev` to not do this. What if I want to link directly to the resume from a different site?
4. Store in publicly cloud storage
    * Ideally using Cloudflare - meaning this would require a worker to sit in front of R2 to handle PUT/GET requests for the document. Maybe makes sense now if later on I want more endpoints built for any of my personal projects
