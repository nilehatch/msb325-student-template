#!/bin/sh
# MSB 325 — repository diagnostic.
#
# Give this to a student who says "I pushed it" when nothing arrived, or who
# cannot tell why their work is not being collected. They run one command and
# send back one block of text. Nobody has to describe anything.
#
# Everything here is read-only. It changes nothing.
echo "===== MSB 325 REPO REPORT ====="
echo "when:   $(date)"
echo "folder: $(pwd)"
echo
echo "--- is this a git repository? ---"
git rev-parse --is-inside-work-tree 2>&1
echo
echo "--- where it pushes to ---"
git remote -v 2>&1
echo
echo "--- branch ---"
git branch -vv 2>&1
echo
echo "--- every file on disk, with sizes ---"
find . -type f -not -path "./.git/*" -exec ls -l {} \; 2>/dev/null | awk '{print $5" bytes  "$9}' | sort -k3
echo
echo "--- what git is tracking ---"
git ls-files 2>&1
echo
echo "--- anything changed or untracked ---"
git status --short 2>&1
echo "(no lines above means nothing is waiting to be committed)"
echo
echo "--- last 10 commits ---"
git log --oneline -10 2>&1
echo
echo "--- anything committed but not pushed ---"
git log --oneline @{u}.. 2>&1
echo "(no lines above means everything committed has been pushed)"
echo
echo "--- identity git is using ---"
echo "name:  $(git config user.name)"
echo "email: $(git config user.email)"
echo "===== END REPORT ====="
