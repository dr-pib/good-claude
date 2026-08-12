# Soft Close — sleeping, not leaving

Clay is stepping away (usually to sleep) but staying on this computer and this
session. Everything a Hard Close records must be recorded — the difference is
what happens AFTER: instead of stopping, propose the loose ends.

Reconciled 2026-08-10 against the original TextEdit doc (recovered that evening
as `Claude Session Close.rtf`, where this was headed "USE FOR NORMAL CLOSE").
Every instruction from the original is folded in; nothing from the earlier
reconstruction was removed. Generalized 2026-08-12 from the `acct` copy so one
file serves every repo. If this file and Clay's memory still disagree, ask him
and update this file.

**Part 1 — record everything, exactly as Hard Close steps 1–8:**
projectmem if this repo has it (issues / attempts / fixes /
decisions-with-the-rejected-alternative / notes via MCP tools, including a note
for every question Clay left unanswered), the session-state block written for a
cold reader who did not see this conversation, `todo.md` plus any other `.md`
files this session touched (archive, condense or combine — **never delete**),
docs, and issue reconciliation: close what shipped **naming the PR**, file a new
issue for anything discovered or specced but not built, and update any open
issue that a ruling from this session changed.

The board Clay reads is the project-hq dashboard, which pulls *this repo's*
GitHub issues, PRs, and `todo.md` — see Hard Close for what that implies. A step
naming something this repo lacks (projectmem, a remote, a deploy) does not
apply; do the rest and say which you skipped.

Then commit and push everything that is finished, including `.projectmem/`;
**confirm CI passed**, and that the deploy landed if this repo deploys; and
**remove your worktrees and temp branches** so the tree is clean.

Unlike a Hard Close, you MAY ask Clay a question here — he is still awake.

**Part 2 — the forgotten-things list.** Go back through the WHOLE session and
build a short list of things Clay might have forgotten about — items he
touched, mentioned, or was owed that never got finished. Typical candidates:

- Deploys or fixes shipped but never verified against real data
- Questions I asked that he never answered (and still matter)
- Data he said he'd enter or look up (dates, rulings, paper records)
- Small approved-in-spirit fixes that got skipped for bigger fires
- Anything left in a temporary or workaround state
- Scripts written but not yet run, or run but not verified

Present it as a checkpoint: first the shipped list, then a **numbered** list of
every loose end you can see — one line each, including anything you suspect he
is forgetting or anything left half-open. For each item give:

- what it is, in one line
- whether you can do it **AUTONOMOUSLY** while he sleeps, or it **NEEDS HIM**
- **where it will be recorded** (the session-state block, projectmem, or a GH
  issue)

Then wait for **one** reply.

- Items he answers with numbers: do those now, before the close.
- **Everything he does not number still gets RECORDED, exactly as listed.**
  Not picking an item means "don't do it" — it never means "drop it."
- Do nothing he didn't pick.

If he's already gone when the list is ready (no answer), do none of the
actions, but still record every item as above, and leave the list as the last
message so it's the first thing he sees.
