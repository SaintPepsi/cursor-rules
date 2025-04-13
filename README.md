# Cursor Rules Repository

This repository contains Cursor rules that can be easily exported and imported across different projects.

## Structure

```
cursor-rules/
├── rules/           # Contains all .mdc rule files
├── scripts/         # Contains utility scripts
└── README.md        # This file
```

## Setup

### Global Command Setup

To make the cursor-rules command available globally:

1. Create a bin directory in your home folder (if it doesn't exist):

   ```bash
   mkdir -p ~/bin
   ```

2. Create a symbolic link to the cursor-rules script:

   ```bash
   ln -s /Users/hogers/Documents/repos/cursor-rules/scripts/cursor-rules ~/bin/cursor-rules
   ```

3. Make sure ~/bin is in your PATH. Add this line to your ~/.zshrc if it's not already there:

   ```bash
   export PATH="$HOME/bin:$PATH"
   ```

4. Reload your shell configuration:
   ```bash
   source ~/.zshrc
   ```

Now you can use the `cursor-rules` command from anywhere!

## Usage

### Seed Local Structure

To set up the local directory structure needed for importing rules:

```bash
cursor-rules seed
```

This is necessary when:

- Setting up a new project
- After pulling changes from the repository
- When the import command fails due to missing directories

### Import Rules

To import rules from the repository to your current project:

```bash
cursor-rules import
```

This is useful when:

- You've pulled changes from the repository
- You want to update your local rules to match the repository

### Export Rules

To export rules from your current project to the repository:

```bash
cursor-rules export
```

This is useful when:

- You've made changes to your local rules
- You want to share your rules with others

### Show Help

To see usage instructions:

```bash
cursor-rules
```

## Rules

- [Naming Conventions Cheatsheet](./rules/naming-cheatsheet.mdc)
- [Add more rules here...]

## Contributing

1. Create a new rule file in the `rules/` directory
2. Add the rule to the README.md
3. Commit and push your changes
