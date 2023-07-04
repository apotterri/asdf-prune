# Contributing

Testing Locally:

```shell
asdf plugin test <plugin-name> <plugin-url> [--asdf-tool-version <version>] [--asdf-plugin-gitref <git-ref>] [test-command*]

asdf plugin test prune https://github.com/apotterri/asdf-prune.git --asdf-plugin-gitref main "prune --help"
```

Tests are automatically run in GitHub Actions on push and PR.
