# Milestones

## Milestone 0 — Repo + Docker Skeleton ✅
- [x] Rails app scaffold
- [x] Postgres service + volumes
- [x] Container entrypoint strategy
- [x] `docker compose up` runs DB setup + placeholder rake tasks

## Milestone 1 — Plaid Integration
- [ ] Plaid config (env vars)
- [ ] Link UI (Hotwire)
- [ ] Token + item storage model
- [ ] Transaction sync models (raw + normalized)
- [ ] Rake task `plaid:sync`

## Milestone 2 — Transform → hledger Journals
- [ ] Mapping rules model (accounts, payees, categories/tags)
- [ ] Export service writes deterministic journals
- [ ] Rake task `ledger:export`
- [ ] `hledger check` hook

## Milestone 3 — Dashboard from hledger
- [ ] `hledger` command runner wrapper
- [ ] Generate report artifacts (JSON/CSV)
- [ ] Hotwire dashboard pages

## Milestone 4 — QBSE CSV Import
- [ ] CSV upload/import UI
- [ ] Import parser + mapping
- [ ] Dedup strategy (date+amount+payee heuristics)
- [ ] Merge into normalized transactions + export
