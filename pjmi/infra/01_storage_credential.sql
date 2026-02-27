-- =====================================================
-- Storage Credential Creation
-- Environment: DEV
-- =====================================================

-- NOTE: Storage credentials cannot be created via SQL DDL.
-- Use one of the following methods:
--   1. Databricks UI: Catalog > External Data > Credentials > Create Credential
--   2. Databricks CLI (see command below)
--   3. REST API

-- Databricks CLI command to create the storage credential:
-- databricks storage-credentials create --json '{
--   "name": "pjmi_storage_cred",
--   "azure_managed_identity": {
--     "access_connector_id": "/subscriptions/d1c60128-ab92-4936-8702-cb9845e11320/resourceGroups/rg-pjmi-dev-001/providers/Microsoft.Databricks/accessConnectors/dbc-pjmi-dev-connector"
--   }
-- }'

-- Original SQL (not supported):
-- CREATE STORAGE CREDENTIAL IF NOT EXISTS pjmi_storage_cred
-- WITH AZURE_MANAGED_IDENTITY
-- (
--   ACCESS_CONNECTOR_ID = '/subscriptions/d1c60128-ab92-4936-8702-cb9845e11320/resourceGroups/rg-pjmi-dev-001/providers/Microsoft.Databricks/accessConnectors/dbc-pjmi-dev-connector'
-- );

-- Grant usage to account users (dev phase)
-- Run this AFTER creating the credential via CLI/UI
GRANT USE STORAGE CREDENTIAL 
ON STORAGE CREDENTIAL pjmi_storage_cred 
TO `account users`;
