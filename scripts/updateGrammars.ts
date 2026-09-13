/// <reference types="bun" />
import { join } from 'path'

const extensionTOMLPath = join(import.meta.dir, '../extension.toml')
const config = Bun.TOML.parse(await Bun.file(extensionTOMLPath).bytes()) as {
    grammars: Record<string, { repository: string; rev: string }>
}

for (const grammar of Object.values(config.grammars)) {
    const latestRev =
        await Bun.$`git ls-remote ${grammar.repository} --heads HEAD | cut -f 1`.text()
    grammar.rev = latestRev.trim()
}

await Bun.file(extensionTOMLPath).write(Bun.TOML.stringify(config)!)
