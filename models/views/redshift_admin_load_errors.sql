{{
  config({
    "materialized" : "view",
    "bind":False,
    "post-hook" : [
    	"grant select on table {{this}} to group non_gl_read_only"
    	]
    })
}}

select
	u.username,
  e.table_id,
  t.schema,
  t.table,
  e.query_id,
  e.start_time,
  e.file_name,
  e.line_number,
  e.column_name,
  e.column_type,
  e.column_length,
  e.position,
  e.raw_line,
  e.raw_field_value,
  e.error_code,
  e.error_reason

from {{ref('stl_load_errors')}} e 
join {{ref('pg_user')}} u using(user_id)
join {{ref('redshift_admin_table_stats')}} t using(table_id)