create external volume if not exists pjmi.inbound.landingzone
location 'abfss://pjmi-raw@stpjmidev001.dfs.core.windows.net/inbound/'
comment 'Landing zone for files';
