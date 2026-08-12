# good-claude

Claude configuration that has to be the same on every machine.

`~/.claude` is not a git repo, so anything living only there exists on one
computer. That is a real failure mode for the close commands in particular:
`/hard-close` opens with "possibly switching computers", and before
2026-08-12 it would not have existed on the computer you switched to.

## What is here

- `commands/soft-close.md` — `/soft-close`. Stepping away, usually to sleep.
  Records everything a hard close records, then proposes the loose ends and
  waits for one reply.
- `commands/hard-close.md` — `/hard-close`. Ending the session for real.
  Records everything and stops. Asks nothing.

Both are written to work in any repo. Steps that name something a repo does
not have (projectmem, a git remote, a deploy) are marked as not applying.

## Install on a machine

```sh
git clone git@github.com:dr-pib/good-claude.git ~/code/good-claude
mkdir -p ~/.claude/commands
ln -s ~/code/good-claude/commands/soft-close.md ~/.claude/commands/soft-close.md
ln -s ~/code/good-claude/commands/hard-close.md ~/.claude/commands/hard-close.md
```

Symlinks rather than copies, so editing the file in this repo is the only way
to change the command and the two cannot drift apart on one machine.

To update everywhere afterward: `git pull` here. That is the whole update.

## Things worth knowing

**A repo-local `.claude/commands/<name>.md` overrides the global one.** As of
2026-08-12, `acct` and `acct-nav` both keep their own `soft-close.md` and
`hard-close.md`, which is why those two repos do not use the files here. Their
copies name acct issues #268 and #269 as the boards, which are real acct issues
and mean nothing anywhere else. Leaving them specialized is a legitimate
choice; just know that a fix made here will not reach them.

**The board is the project-hq dashboard.** It reads each tracked repo's GitHub
issues, PRs and `todo.md` over the API, with the registry in
`project-hq/lib/projects.js`. Two consequences the close docs depend on: an
uncommitted `todo.md` edit is invisible to Clay, and a repo outside that
registry has no board at all. Nine local repos were outside it on 2026-08-12
(project-hq#22).

**`plan.md` is not universal.** Most projectmem repos keep
`.projectmem/plan.md`, but `ems-lms` and `emr` deliberately retired theirs on
2026-07-28, because plan.md and todo.md drifted and two lists that must agree
eventually disagree. `hard-close` step 3 therefore defaults to `todo.md` and
says to check before creating a plan.md anywhere.
