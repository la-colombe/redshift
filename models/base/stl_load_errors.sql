select

  userid as user_id,
  tbl as table_id,
  query as query_id,
  starttime as start_time,
  filename as file_name,
  line_number,
  colname as column_name,
  type as column_type,
  col_length as column_length,
  position,
  raw_line,
  raw_field_value,
  err_code as error_code,
  err_reason as error_reason
  
from {{source('pg_catalog','stl_load_errors')}}