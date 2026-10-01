# ai_decide_101

Minimal Databricks example: route support tickets with [`ai_decide`](https://docs.databricks.com/aws/en/sql/language-manual/functions/ai_decide).

Unstructured ticket text in. Structured decisions out:

- **team** — `choice`: billing / technical / account / other
- **urgency** — `score` from 0 (routine) to 2 (critical)
- **human_review** — `noul` probability

## Files

- `setup_tickets.sql` — creates `main.mehdi_aidecide.support_tickets`
- `run_ai_decide.sql` — classifies each ticket in one SQL query
- `ai_decide_architecture.html` — simple flow diagram: tickets → `ai_decide()` → decisions

## Run

1. Run `setup_tickets.sql` on a SQL warehouse (Preview recommended).
2. Run `run_ai_decide.sql`.

Announcement: [Introducing ai_decide](https://www.databricks.com/blog/introducing-aidecide-make-fast-decisions-your-governed-data)
