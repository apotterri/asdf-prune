<div align="center">

# asdf-prune [![Build](https://github.com/apotterri/asdf-prune/actions/workflows/build.yml/badge.svg)](https://github.com/apotterri/asdf-prune/actions/workflows/build.yml) [![Lint](https://github.com/apotterri/asdf-prune/actions/workflows/lint.yml/badge.svg)](https://github.com/apotterri/asdf-prune/actions/workflows/lint.yml)

[prune](https://github.com/apotterri/asdf-prune) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

**TODO: adapt this section**

- `bash`, `curl`, `tar`: generic POSIX utilities.
- `SOME_ENV_VAR`: set this environment variable in your shell config to load the correct version of tool x.

# Install

Plugin:

```shell
asdf plugin add prune
# or
asdf plugin add prune https://github.com/apotterri/asdf-prune.git
```

prune:

```shell
# Show all installable versions
asdf list-all prune

# Install specific version
asdf install prune latest

# Set a version globally (on your ~/.tool-versions file)
asdf global prune latest

# Now prune commands are available
prune --help
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/apotterri/asdf-prune/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Alan Potter](https://github.com/apotterri/)
