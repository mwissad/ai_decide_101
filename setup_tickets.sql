CREATE SCHEMA IF NOT EXISTS main.mehdi_aidecide;

CREATE OR REPLACE TABLE main.mehdi_aidecide.support_tickets (
  ticket_id STRING,
  customer STRING,
  message STRING
);

INSERT INTO main.mehdi_aidecide.support_tickets VALUES
  ('TCK-1042', 'Layla Hassan', 'I was charged twice for the same invoice this morning. Please refund the duplicate payment immediately. Order INV-88921.'),
  ('TCK-1043', 'Omar Al Farsi', 'Production API is returning 500s for all checkout calls since 04:10 GST. Customers cannot complete payment. This is a full outage.'),
  ('TCK-1044', 'Sara Khan', 'I cannot reset my password. The reset email never arrives and I am locked out of the admin console for our workspace.'),
  ('TCK-1045', 'Daniel Ruiz', 'Can you explain the difference between the Pro and Enterprise invoice line items on last month''s bill? No rush, just planning next quarter.'),
  ('TCK-1046', 'Nadia Rahim', 'Your last release deleted our saved dashboards. Legal is already involved and I want a human on the phone in the next hour.');
