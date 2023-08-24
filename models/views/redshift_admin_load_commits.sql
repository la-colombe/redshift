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
  c.query_id,
  c.file_name,
  c.lines_scanned,
  c.errors,
  c.status,
  c.updated_at,
  c.file_format

from {{ref('stl_load_commits')}} c 
join {{ref('pg_user')}} u using(user_id)