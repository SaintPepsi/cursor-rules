# Cursor Rules Repository

This repository contains Cursor rules that can be easily exported and imported across different projects.

## Structure

```
cursor-rules/
├── rules/           # Contains all .mdc rule files
├── scripts/         # Contains utility scripts
└── README.md        # This file
```

## Usage

### Export Rules

To export rules from your current project to this repository:

```bash
./scripts/export-rules.sh
```

### Import Rules

To import rules from this repository to your current project:

```bash
./scripts/import-rules.sh
```

## Rules

- [Naming Conventions Cheatsheet](./rules/naming-cheatsheet.mdc)
- [Add more rules here...]

## Contributing

1. Create a new rule file in the `rules/` directory
2. Add the rule to the README.md
3. Commit and push your changes
