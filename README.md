# Linux Distro Tools to build Container filesystems

This is work towards Nisha and Joshua's talk for KubeCon NA 2019: https://kccncna19.sched.com/event/Uaas/linux-distribution-build-tools-for-custom-container-images-nisha-kumar-joshua-lock-vmware

## Motivation
- The current way of building container images with Dockerfiles is not declarative or repeatable, creates bloated container images, produces a large attack surface, and is difficult if not impossible to meet open source legal compliance obligations.
- OS suppliers are able to build container filesystems using declarative and repeatable methods that address all of these issues (somewhat). However, a normal dev doesn't have the kind of time or resources required to make such filesystems using the existing tools.
- But an app developer is not an OSV.

## Some Observations
- "Deduplication" is a marketed plus for using CoW filesystems. Building on top of these filesystems saves CPU time and memory. However, the image itself is large. There is no "deduplication" when it comes to distributing the images.
- Typical pattern for building an app is
  1. Choose appropriate/smallest SDK/Framework container image
  2. Choose appropriate/smallest deploy container if applicable
  3. Find steps to "make it work"
  4. Copy steps into Dockerfile
  5. Build and deploy.
- Kinds of container images
  1. Dev OS
  2. SDK/Framework on top of Dev OS
  3. Runtime OS for SDK/Framework

## List of tools
- Nixery
- Guix
- Buildroot
- Debos 
- Yocto Project

## Factors to Consider
When comparing image construction tools the following factors are worth bearing in mind, each of which is desirable for an image creation tool (Note: no consideration has been given to weighting of factors at this time, the following list is unordered):
- repeatable/reproducible: given the same inputs an equivalent container image should be produced (ideally this would be binary reproducible, but we'll settle for repeatable as a baseline). This requires deterministic behaviour throughout the system - minimal to no network calls, deterministic order of operations, etc.
- easy to use: we posit that part of the success of Dockerfiles, and a difficulty in trying to advocate for an alternative means of container image construction, is the ease with which results can be produced and iterated on, largely through inference from the broad range of (often bad) examples.
- broad content availability: Dockerfiles can draw from a wide corpus of content - through layering on existing images which have the desired content, using Linux distribution base images and their package archives, and the ability to run arbitrary commands in the container being produced - it's possible to add any conceivable content. For a solution to appeal to potential  users it _must_ be able to offer a large corpus of available content.
- fast: construction of an image from a Dockerfile isn't noticeable slower than performing the same operations in the host environment, hence the proliferation of containers as a development tool. A solution must be able to build in comparable time to win mindshare from potential users.

[![slow builds](https://imgs.xkcd.com/comics/compiling.png)](https://xkcd.com/303/)

- tractable: a typical Dockerfile often fits in a single editor window (80chars wide and 25 chars high, of course) and through brevity and leveraging existing knowledge is easy to reason about - _"all"_ the reader need understand is the package manager primitives used and (usually, though disagreeably) the language-framework ecosystem of the content application. Any solution that would compete with a Dockerfile should also be tractable.
- rootless: images should be able to be built as an unprivileged user. Even better building an image should not require an setuid binary.
- hermetic: image builds should be isolated from each other and the host OS.
- minimal: in an ideal world a container image would contain just enough of the Operating System (jeOS) to run its target workload, and no more.
- identifiable: the contents of a container image must be of understood provenance, so that license compliance can be assured and security posture can be understood.
