# ASDF

Manage multiple runtime versions with a single CLI tool

`asdf` is installed and managed by [(Home)brew](https://brew.sh/)

After installation and having global default runtimes set in `.tool-versions`, install the necessary runtime plugins and then proceed to install the necessary versions.

Some `dependencies` for [plugins](https://github.com/asdf-vm/asdf-plugins) are OS dependent so let `asdf` handle the instllations.

## Install Plugins

Documentation on installing a [plugin](https://asdf-vm.com/guide/getting-started.html#_4-install-a-plugin)

**Example:**

```bash
$ asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
```

## Install Versions

Documentation on installing a runtime [version](https://asdf-vm.com/guide/getting-started.html#_5-install-a-version)

**Example:**

```bash
$ asdf install nodejs latest
```

## Other

Additional notes about setting `global` and `local` versions also available in asdf's documentation.
