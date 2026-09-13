# Klar for Zed 🦓

Klar support for [Zed](https://zed.dev)

## Features

- 🎨 Syntax highlighting for Klar, Klon, and `glas.lock` files
- 💡 Language server provided by [KlarLS](https://github.com/ProCode-Software/klar/tree/main/internal/lsp/README.md)

## Installation

1. Clone this repo:
    ```sh
    git clone https://github.com/klarlanguage/klar-zed.git
    ```
2. In Zed, go to _File > Extensions_ (or _Ctrl+Shift+X_), then _Install Dev Extension_, and select the folder with the cloned repo.

## Contributing

Issues, bug reports, and discussions should be created in the [main Klar repo](https://github.com/ProCode-Software/klar).

Contributions should follow our [style guide](https://github.com/ProCode-Software/klar/blob/main/CONTRIBUTING.md#code-style) and [AI policy](https://github.com/ProCode-Software/klar/blob/main/CONTRIBUTING.md#using-ai) in the main Klar repo.

### Updating Tree-sitter Grammars

To update the `rev` fields of the grammars in [extension.toml](./extension.toml), run `bun run update-repos` or `bun run scripts/updateGrammars.ts`.

## License

[Apache-2.0](./LICENSE)
