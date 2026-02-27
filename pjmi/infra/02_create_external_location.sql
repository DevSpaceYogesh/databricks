-- =====================================================
-- External Locations Creation
-- One container = One external location
-- =====================================================

-- RAW
CREATE EXTERNAL LOCATION IF NOT EXISTS pjmi_raw_ext
URL 'abfss://pjmi-raw@stpjmidev001.dfs.core.windows.net/'
WITH (STORAGE CREDENTIAL pjmi_storage_cred);

-- BRONZE
CREATE EXTERNAL LOCATION IF NOT EXISTS pjmi_bronze_ext
URL 'abfss://pjmi-bronze@stpjmidev001.dfs.core.windows.net/'
WITH (STORAGE CREDENTIAL pjmi_storage_cred);

-- SILVER
CREATE EXTERNAL LOCATION IF NOT EXISTS pjmi_silver_ext
URL 'abfss://pjmi-silver@stpjmidev001.dfs.core.windows.net/'
WITH (STORAGE CREDENTIAL pjmi_storage_cred);

-- GOLD
CREATE EXTERNAL LOCATION IF NOT EXISTS pjmi_gold_ext
URL 'abfss://pjmi-gold@stpjmidev001.dfs.core.windows.net/'
WITH (STORAGE CREDENTIAL pjmi_storage_cred);


-- =====================================================
-- Grants
-- =====================================================

GRANT READ FILES ON EXTERNAL LOCATION pjmi_raw_ext TO `account users`;
GRANT CREATE EXTERNAL TABLE ON EXTERNAL LOCATION pjmi_bronze_ext TO `account users`;
GRANT CREATE EXTERNAL TABLE ON EXTERNAL LOCATION pjmi_silver_ext TO `account users`;
GRANT CREATE EXTERNAL TABLE ON EXTERNAL LOCATION pjmi_gold_ext TO `account users`;