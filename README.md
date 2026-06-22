# Central Saints website

This repository contains the static Central Saints Youth Football & Cheer website.

## Structure

- Root HTML files are the public pages.
- `assets/` contains shared CSS and JavaScript.
- `images/`, `docs/`, and `forms/` contain files used by the public pages.
- `source/` contains editable originals and is not published.
- `archive/` contains retired website material and is not published.
- `scripts/prepare-deploy.sh` builds a reviewed upload package in `dist/`.

Use lowercase, hyphen-separated names for new files. Avoid spaces and keep editable source files out of the public folders.

## Publishing

Run `scripts/prepare-deploy.sh` and upload only the generated `dist/` directory. The script intentionally excludes Git data, source files, archived material, and executable PHP files.
