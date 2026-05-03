# Personal global settings

Applies to all projects. Project CLAUDE.md overrides.

## Language
- Reply in Japanese (常体, concise).
- Japanese punctuation: use `，` and `．` (not `、` and `。`). Applies to replies, comments, commit messages, PRs.
- Comments, commit messages, PRs: Japanese. Identifiers: English.
- No emojis unless asked.

## VCS: jj (not git)
- Before editing: `jj st`. Confirm `@` is a fresh change for this work. If `@` has unexpected edits, stop and ask. If no new change, `jj new` first.
- `jj describe`: Conventional Commits (e.g. `feat: ユーザー検索を追加`).
- `jj git push` auto-OK; `--force` and rewriting pushed changes need confirmation.
- Never skip pre-commit hooks — fix the root cause.

## Shell
- Prefer modern CLI tools when shelling out: `rg` over `grep`, `fd` over `find`, `bat` over `cat` (when Read isn't applicable).
- Destructive ops (`rm -rf`, mass deletes, `jj abandon` on unknown changes) need confirmation.
- Stay in `$HOME` (`/Users/citrus`). System paths need approval.
- Run >30s commands (builds, tests, servers) with `run_in_background`.
- No global installs (`npm i -g`, `brew install`, etc.) without permission.
