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
