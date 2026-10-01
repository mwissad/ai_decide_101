SELECT
  ticket_id,
  customer,
  message,
  decision:response.answers.team.choice AS team,
  decision:response.answers.urgency.score AS urgency,
  decision:response.answers.human_review.probability AS human_review_prob,
  decision:error_message AS error_message,
  decision:response.answers AS answers
FROM (
  SELECT
    ticket_id,
    customer,
    message,
    ai_decide(
      message,
      '{
        "team": {
          "type": "choice",
          "instructions": "Which team should handle this ticket?",
          "criteria": {
            "billing": "Invoices, charges, refunds, or payment issues",
            "technical": "Errors, outages, performance, or integrations",
            "account": "Login, permissions, or account administration",
            "other": "Anything not covered by the other teams"
          }
        },
        "urgency": {
          "type": "score",
          "instructions": "How urgent is this ticket?",
          "criteria": [
            "Routine request with no time pressure",
            "Time-sensitive issue with a workaround",
            "Critical issue blocking the customer"
          ]
        },
        "human_review": {
          "type": "noul",
          "instructions": "Does this ticket require human review?"
        }
      }',
      map('version', '1.0')
    ) AS decision
  FROM main.mehdi_aidecide.support_tickets
)
