[![Build Status](https://travis-ci.org/opspec-pkgs/github.repo.create.svg?branch=master)](https://travis-ci.org/opspec-pkgs/github.repo.create)

# Problem statement

creates a github release

# Example usage

> note: in examples, VERSION represents a version of the
> github.repo.create pkg

## install

```shell
opctl pkg install github.com/opspec-pkgs/github.repo.create#VERSION
```

## run

```
opctl run github.com/opspec-pkgs/github.repo.create#VERSION
```

## compose

```yaml
op:
  pkg: { ref: github.com/opspec-pkgs/github.repo.create#VERSION }
  inputs: 
    name:
    loginUsername:
    loginPassword:
    # begin optional args
    description:
    gitignoreTemplate:
    homepage:
    isAutoInitEnabled:
    isIssuesEnabled:
    isMergeMergingAllowed:
    isPrivate:
    isProjectsEnabled:
    isRebaseMergingAllowed:
    isSquashMergingAllowed:
    isWikiEnabled:
    licenseTemplate:
    teamId:
    org:
    # end optional args
```

# Support

join us on
[![Slack](https://opspec-slackin.herokuapp.com/badge.svg)](https://opspec-slackin.herokuapp.com/)
or
[open an issue](https://github.com/opspec-pkgs/github.repo.create/issues)

# Releases

releases are versioned according to
[![semver 2.0.0](https://img.shields.io/badge/semver-2.0.0-brightgreen.svg)](http://semver.org/spec/v2.0.0.html)
and [tagged](https://git-scm.com/book/en/v2/Git-Basics-Tagging); see
[CHANGELOG.md](CHANGELOG.md) for release notes

# Contributing

see
[project/CONTRIBUTING.md](https://github.com/opspec-pkgs/project/blob/master/CONTRIBUTING.md)
