Some notes of seemingly relevant commands/features:
* [`guix import`](https://guix.gnu.org/manual/en/html_node/Invoking-guix-import.html) - a mechanism to automatically create Guix package metadata. Can import from PyPI (`guix import pypi -r tern`), Ruby Gems, CPAN, CRAN, Nix, etc as well as taking generic info about a package in JSON format.
* [`guix refresh`](https://guix.gnu.org/manual/en/html_node/Invoking-guix-refresh.html) - attempts to determine whether any packages are out of date and automatically update them.
* [`guix system docker-image container.scm`](https://guix.gnu.org/manual/en/html_node/Invoking-guix-system.html) will take a system definition as a Scheme file and create a Docker image matching that definiton
* [`guix pack --format docker -S /opt/gnu/bin=bin mysql`](https://guix.gnu.org/manual/en/html_node/Invoking-guix-pack.html) will create a Docker container image containing the specified package(s) and its dependencies only
