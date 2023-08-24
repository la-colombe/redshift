select

  userid as user_id,
  query as query_id,
  filename as file_name,
  lines_scanned,
  errors,
  status,
  curtime as updated_at,
  file_format
  
from {{source('pg_catalog','stl_load_commits')}}