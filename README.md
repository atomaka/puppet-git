# puppet-git

## Description
Install an appropriate version of git (and possibly other git configurations
later).  Specifically, Ubuntu 12.04's repository distributes version 1.7.9.5
of git and most softwares (Github, GitLab, etc) recommend 1.7.10+.  This module
resolves that issue.

## Usage

```code
class { 'git': }
```
