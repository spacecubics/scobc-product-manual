# Using this repo as a reference

This repo is the **SC-OBC Module A1 Product Manual** (Document Number: SC-ESP-00050),
covering hardware, software, and FPGA documentation for the Space Cubics SC-OBC Module A1,
an on-board computer for CubeSats of 3U size and larger. If you were pointed at this repo
to answer engineering questions about that hardware (pinouts, register maps, board layout,
Zephyr driver usage, etc.), this file is for you. A rendered version is also online at
https://spacecubics.github.io/sc-docs/, but this checkout is the authoritative full-text
source, so prefer grepping it directly over fetching the rendered site.

This manual is not something you're expected to edit. If you were actually asked to
*contribute* to this documentation (fix a typo, add a page, etc.), stop and read
`README.adoc` and the repo's existing conventions instead. The guidance below is about
consuming the content, not writing it.

## How the content is organized

Pages are AsciiDoc (`.adoc`), built with Antora. The manual is split across three
top-level directories by subject, and each of those has separate `en/` and `ja/`
language trees with the same structure:

- `product/<lang>/modules/`: Product Overview and OBC Module hardware specs (`ROOT/`),
  Development Board (`dev-board/`)
- `software/<lang>/modules/`: Zephyr-based software, setup, samples, driver usage
  (`software/`)
- `fpga/<lang>/modules/`: FPGA documentation (`fpga/`)

Default to the `en/` trees unless you were told to answer in Japanese or the user's
question was in Japanese. Within each module: `nav.adoc` lists that section's pages in
reading order (check this first to see what exists before grepping blind), and
`pages/*.adoc` holds the actual content. Diagrams/images live under each module's
`assets/images/`.

## Reading AsciiDoc conventions

- `xref:page.adoc[Text]` is an internal cross-reference (a link), not something to modify.
- `include::file.adoc[]` pulls another file's content in at build time. If a page looks
  sparse, check for an `include::` pulling in the real content.
- Attributes (`{like-this}`) are variables defined in `antora.yml` or the page itself.

## Finding things fast

Prefer `grep -ri` over reading the whole tree. Search for register names, signal names,
part numbers, or connector labels directly. Hardware specs and interface tables are the
densest source of the kind of detail firmware/integration work usually needs
(`product/en/modules/ROOT/pages/`, `product/en/modules/dev-board/pages/interface-specs.adoc`).
For software/driver questions, `software/en/modules/software/pages/use-zephyr-drivers/`
and `develop-zephyr-app/` have worked examples.
