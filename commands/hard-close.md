# Hard Close — "I'm not looking again"

Clay is ending this session for real: possibly switching computers, possibly
gone for days. When this command runs, NOTHING may survive only in this
conversation or in the working tree. The next session — on any machine — must
be able to pick up cold from what you record now.

**Do not ask questions. Do not wait for a reply. When in doubt, record instead
of resolving.** Clay's own framing: *"I have no time to review anything."* A
hard close that stops to ask something has failed at the one thing it is for.

Reconciled 2026-08-10 against the original TextEdit doc, which was recovered
that evening and now lives in the share as `Claude Session Close.rtf`. Every
instruction from the original is folded in; nothing from the earlier
reconstruction was removed. Generalized 2026-08-12 from the `acct` copy so one
file serves every repo. If this file and Clay's memory still disagree, ask him
*outside* a close and update this file.

**The board Clay actually reads is the project-hq dashboard.** It pulls each
tracked repo's GitHub issues, PRs, and `todo.md` (registry:
`project-hq/lib/projects.js`). So "update the board" always means *this repo's*
GitHub issues and `todo.md` — that is what surfaces to him. Two consequences:
he DOES read `todo.md`, and the dashboard's open-item count skips sections
whose heading contains "done" or "loose end". If this repo is not in the
registry, record the same things anyway and say so in your final summary.

Steps that name a tool this repo does not have (projectmem, a git remote, a
deploy) simply do not apply — do the rest, and note the skip in step 8.

Do all of the following, in order:

1. **Finish nothing new.** Anything mid-build gets committed and pushed on its
   OWN BRANCH as-is, with its state noted in the session-state block (step 3):
   the branch name, what works, what is broken, and what the next step was.
   **Merge nothing that has not already passed CI.**

2. **Projectmem** — if this repo has a `.projectmem/` directory (MCP tools,
   never direct file edits):
   - `log_issue` for any bug found this session and not yet logged.
   - `record_attempt` for every fix attempt not yet recorded — failed and
     partial ones especially.
   - `record_fix` only for fixes with evidence (test, reproduction, or Clay
     confirmed).
   - `add_decision` for any ruling Clay made — quote his words, **and record
     the alternative that was rejected.**
   - `add_note` for gotchas discovered the hard way.
   - `add_note` for **every question Clay left unanswered**, worded so a
     stranger knows what was asked and why it matters.

   If this repo has no projectmem, every one of those records still gets
   written — put them in the session-state block in step 3 instead, under the
   same headings. Nothing on that list is optional; only its filing cabinet is.

3. **The session-state block** — normally at the top of `todo.md`. Use
   `.projectmem/plan.md` ONLY in repos that actually keep one: some repos have
   deliberately retired it (ems-lms did on 2026-07-28, because plan.md and
   todo.md drifted apart and two lists that must agree eventually disagree, at
   which point neither can be trusted). **Do not create a plan.md in a repo
   that does not already have one** — check first. Write it for a cold
   reader: what shipped (with commit hashes), what's open in priority order
   with what each item waits on, and anything Clay owes (answers, dates,
   rulings) called out explicitly. Include a section titled **"UNRESOLVED"**
   listing every open thread: what it is, where it stands, what it is waiting
   on, and where it is recorded. Nothing may survive only in this conversation.

4. **`todo.md`** — reconcile: new items in, finished items out, Clay-blocking
   items under "Waiting on Clay". This file is on his dashboard, so write it
   for him, not for you. Keep this repo's GitHub issues current FIRST if the
   session touched their subjects — issues outrank todo lines. Also tidy any
   other `.md` files this session touched — archive, condense or combine them,
   but **never delete**.

5. **Docs** — if the session produced knowledge that belongs in `docs/`
   (an investigation, a data-quality finding, a settled process), write or
   update the doc rather than leaving it in projectmem alone.

6. **GitHub** — close what this session shipped, **naming the PR that closed
   it**; comment on any issue the session materially advanced; and file an
   issue for every unresolved thread too big for a one-line entry — including
   anything Clay said mid-conversation and never ruled on, and any real defect
   found but not fixed.

7. **Commit and push EVERYTHING, including `.projectmem/`.** The event log
   travels via git (union merge is configured); uncommitted projectmem on one
   machine is how the 2026-08-09 cross-machine drift happened. **Confirm CI
   passed**, and that the deploy landed if this repo deploys, for whatever
   shipped; and **remove your worktrees and temp branches** so the tree is
   clean. Verify with `git status` (clean) and `git log origin/main -1` (your
   commit) before declaring done. If this repo has no remote, say so in step 8
   and leave the work committed locally.

8. **Report back in five lines or fewer:** what was recorded where, what's
   open, and the single most important thing the next session should do first.
   Then stop. **If something cannot be recorded safely, say so in the summary
   and leave it untouched.**

Do NOT start new feature work under this command. If you notice something
broken while closing, log it — don't fix it.
