# MSB 325 — Course Repository

This repository is yours. It holds your work for the semester, and for the first
month it holds exactly one file.

## What lives here

| Path | What it is | When it starts |
|---|---|---|
| `supervision-log.md` | One entry per class: a moment you overrode, redirected, or refused your AI | Class 5 |
| `decision/` | Your gate deliverables — frame, prior, evidence, sense, call | D1, Oct 1 |
| `app/` | The application you build | B1, Oct 20 |

## The one rule

**Commit after every class.** Not at the end of the semester, not the night
before something is due. After every class.

Your supervision log is graded on five moments you select from what you actually
logged. A log written in December has commits dated December, and everyone can
see that — including you. A log with twenty-seven commits spread across the term
is the only evidence anyone has that you were driving.

## Identity

You configured git with a course pseudonym, not your name. That is deliberate,
and it is worth understanding rather than just doing.

Git writes the author name and email into **every commit object**, permanently.
You cannot remove it later without rewriting history, and on a public repository
that metadata is visible to anyone forever. Most people learn this the first time
they push their personal email address to an open-source project.

Here, the pseudonym also means your instructor can read this work with AI
assistance without your name traveling with it.

## Commands you need

```bash
git add -A                     # stage everything you changed
git commit -m "class 7 log"    # record it, with a message
git push                       # send it to GitHub
```

That is the whole loop for the first month. Branches, merges, and conflicts come
later, when you have code worth protecting.
