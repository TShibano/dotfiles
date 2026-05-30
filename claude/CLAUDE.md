# Personal global settings

Applies to all projects. Project CLAUDE.md overrides.

## Language
- Reply in Japanese (常体, concise).
- Japanese punctuation: use `，` and `．` (not `、` and `。`). Applies to replies, comments, commit messages, PRs.
- Comments, commit messages, PRs: Japanese. Identifiers: English.
- No emojis unless asked.

## VCS: jj (not git)
- Before editing: `jj st`. Confirm `@` is a fresh change for this work. If `@` has unexpected edits, stop and ask. If no new change, `jj new` first.
- Split work strictly by logical change: one `jj` change per logical unit of work. Don't pile unrelated changes into one change — run `jj new` before starting the next logical unit.
- `jj describe`: Conventional Commits (e.g. `feat: ユーザー検索を追加`). After the subject, leave a blank line and write a short body on *why* (背景・判断の理由), not just what.
- `jj git push` auto-OK; `--force` and rewriting pushed changes need confirmation.

### PR workflow
- Work lands via PR, not straight onto `main`. Flow: `jj rebase -r @ -d main` (only if `@` sits on unrelated unpushed changes — the PR must carry just its own logical unit) → `jj bookmark create <name> -r @` → `jj git push --bookmark <name>` → `gh pr create --base main --head <name>`.
- Bookmark = branch name, `<type>/<topic>` (e.g. `docs/issue2-linux-windows-plan`).
- `jj git push --allow-new` does not exist in this jj version; `--bookmark <name>` pushes a new bookmark as is.
- PR body: 概要 / 調査結果 / 方針 / 検証, in Japanese.
- Merge with **rebase merge** (`gh pr merge <n> --rebase`), never squash: commits are already one-logical-unit-each with a *why* body, so squashing destroys revert/bisect granularity. Squash only when a branch really carries wip/fixup noise, and say so first.
- GitHub remembers the last merge method used in the UI, so a one-off squash silently becomes the default for the next PR. Prefer restricting the repo (`allow_squash_merge=false`) over relying on picking the right button.
- After a merge: `jj git fetch`, then rebase any unpushed sibling changes onto the new `main` (`jj rebase -b <change> -d main`).
- Never skip pre-commit hooks — fix the root cause.

## Shell
- Prefer modern CLI tools when shelling out: `rg` over `grep`, `fd` over `find`, `bat` over `cat` (when Read isn't applicable).
- Destructive ops (`rm -rf`, mass deletes, `jj abandon` on unknown changes) need confirmation.
- Stay in `$HOME` (`/Users/citrus`). System paths need approval.
- Run >30s commands (builds, tests, servers) with `run_in_background`.
- No global installs (`npm i -g`, `brew install`, etc.) without permission.
