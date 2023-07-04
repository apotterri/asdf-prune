<div align="center">

# asdf-prune [![Build](https://github.com/apotterri/asdf-prune/actions/workflows/build.yml/badge.svg)](https://github.com/apotterri/asdf-prune/actions/workflows/build.yml) [![Lint](https://github.com/apotterri/asdf-prune/actions/workflows/lint.yml/badge.svg)](https://github.com/apotterri/asdf-prune/actions/workflows/lint.yml) <!-- omit in toc -->

[prune](https://github.com/apotterri/asdf-prune) plugin for the [asdf version manager](https://asdf-vm.com).

It does only what I need it to, and nothing more. You probably shouldn't use it without looking at [how it works](lib/commands/command.bash).

</div>

# Contents <!-- omit in toc -->

- [Dependencies](#dependencies)
- [Install](#install)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

- `getopt`: the linux/GNU version of getopt. On macOS, expects to find it in `$(brew --prefix)/opt/gnu-getopt`

# Install

Plugin:

```shell
asdf plugin add prune
# or
asdf plugin add prune https://github.com/apotterri/asdf-prune.git
```

prune:

```shell
% asdf prune --help
  Usage: prune [-n[--help] [--dry-run] <language> <version>
  Uninstall all old (i.e. not latest) matching versions of language.

  --dry-run -n  Show uninstall commands that would be run
  --help    -h  This help
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/apotterri/asdf-prune/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Alan Potter](https://github.com/apotterri/)
