# Poly-Distro (Mega-)Test Script

Subdirectory `tests` lists the various tests (as subdirectories) that can be
run per distro (they are not to be don't run directly, rather they are run
inside containers per distro).

Subdirectory `distros` lists the Linux distros to test (as subdirectories).
Inside each subdirectory is `test-settings.env` file which sets:

* IMAGE = a reference to the image for podman(/docer) to pull
* TESTS = the tests to run (in `tests` subdirectory)

There is also an optional `status` subdirectory per distro which may contain
status files for each test. The contents are `PASS` or `FAIL`.

Run `./polydistrotest` for a fun time. Any distro-test pair which has a `status` file
will be skipped (but the status reported). Delete the
`distros/<distro-id>/status/<test-name>` files to run tests.

You can see what tests have passed or failed by doing
```
grep FAIL distros/*/status/*
grep PASS distros/*/status/*
```

See which tests are run for which distros:
```
grep TESTS -R distros/
```

## Tests Skipped

Pip install tests are skipped for distros that do not have a Python 3.6+
package in the default distribution:

* Ubuntu 16.04 and Debian stretch (9) and have Python 3.5
* Debian jessie (8) has Python 3.4
* Scientific Linux 6 seems to only have Python 2
* RHEL 7 (Universal Base Image) has a Python 3 backport for subscription customers only

Install tests for system installed conda (yum-conda) is only for
distros that (as of Aug 2020) have a system package for conda:

* Fedora 31, 32

