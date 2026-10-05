# Changelog

## 0.1.7
* Re-enable the 1password apt source after an Ubuntu release upgrade.
  `do-release-upgrade` adds `Enabled: no` to every third-party source, and
  the write-once repo task never revisited the file, so 1password stopped
  updating. Now the `Enabled: no` line is removed when present (and apt's
  cache refreshed); nothing else in the file is touched.

## 0.1.3
* Fix `Install 1password repo` idempotence. The `>` folded scalar used
  for the repo string carried a trailing newline that newer Ansible /
  apt tooling no longer normalizes away, so `apt_repository` saw a diff
  on every run and reported `changed`. Switched to a single-line string
  and hoisted the architecture lookup into a `set_fact` so it's only
  computed once.

## 0.1.2 and earlier
* First version