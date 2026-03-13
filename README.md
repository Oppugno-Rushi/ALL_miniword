# ALL_miniword

`ALL_miniword` is a collection of Mini Word web-app variants. Each folder contains a standalone HTML/CSS/JavaScript prototype that simulates a Microsoft Word-like editing environment with different UI or interaction behaviors.

## Included Variants

- `real_word_version`: baseline version
- `real_word_version_big_icon`: larger icon set and button presentation
- `real_word_version_no_help_document`: version without the help document flow
- `real_word_version_no_hover_click`: interaction variant without hover-triggered click behavior
- `real_word_version_no_hover_directly_text`: interaction variant that changes hover/direct text behavior
- `real_word_version_physical`: physical-style interaction version
- `real_word_version_predictable`: more predictable interaction behavior
- `real_word_version_shortcut`: keyboard-shortcut-focused version

## Project Structure

Each variant folder typically includes:

- `index.html`: main application page
- `styles.css`: UI styles
- `script.js`: editor logic and toolbar behavior
- `README.md`: variant-specific notes
- `start_dev.sh`: local development start script
- `stop.sh`: local development stop script
- icon asset folders such as `miniword_buttons_png/` and `miniword_icons_set2/`

## How To Run

Choose any variant folder and open it independently.

### Option 1: Open Directly

Open that folder's `index.html` in a browser.

### Option 2: Use the Dev Script

From inside a variant directory:

```bash
./start_dev.sh
```

When finished:

```bash
./stop.sh
```

## Notes

- The variants are intentionally similar, but each explores a slightly different interaction model or presentation style.
- These projects are built with plain HTML, CSS, and JavaScript.
- Most functionality is front-end only and intended for prototyping or simulation.

## Repository Purpose

This repository is meant to keep all Mini Word variants together in one place so they can be compared, tested, and shared from a single GitHub project.
