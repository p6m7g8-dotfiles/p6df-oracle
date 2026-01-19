# P6's POSIX.2: p6df-oracle

## Table of Contents

- [Badges](#badges)
- [Summary](#summary)
- [Contributing](#contributing)
- [Code of Conduct](#code-of-conduct)
- [Usage](#usage)
  - [Functions](#functions)
- [Hierarchy](#hierarchy)
- [Author](#author)

## Badges

[![License](https://img.shields.io/badge/License-Apache%202.0-yellowgreen.svg)](https://opensource.org/licenses/Apache-2.0)

## Summary

TODO: Add a short summary of this module.

## Contributing

- [How to Contribute](<https://github.com/p6m7g8-dotfiles/.github/blob/main/CONTRIBUTING.md>)

## Code of Conduct

- [Code of Conduct](<https://github.com/p6m7g8-dotfiles/.github/blob/main/CODE_OF_CONDUCT.md>)

## Usage

### Functions

#### cli

##### p6df-oracle/lib/cli/build.sh

- `p6df::modules::oracle::cli::build()`
- `p6df::modules::oracle::cli::build::download()`

##### p6df-oracle/lib/cli/docker.sh

- `p6df::modules::oracle::cli::docker::build()`
- `p6df::modules::oracle::cli::docker::run()`

#### p6df-oracle

##### p6df-oracle/init.zsh

- `p6df::modules::oracle::deps()`
- `p6df::modules::oracle::external::brew()`
- `p6df::modules::oracle::init(_module, dir)`

#### p6df-oracle/lib

##### p6df-oracle/lib/cmd.sh

- `p6df::modules::oracle::cmd::sql(...)`

## Hierarchy

```text
.
├── init.zsh
├── lib
│   ├── cli
│   │   ├── build.sh
│   │   └── docker.sh
│   └── cmd.sh
└── README.md

3 directories, 5 files
```

## Author

Philip M. Gollucci <pgollucci@p6m7g8.com>
