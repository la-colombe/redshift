select

  userid as user_id
, query as query_id
, xid as transaction_id
, label
, querytxt as query_text
, pid
, database
, starttime as started_at
, endtime as finished_at
, aborted

from pg_catalog.stl_query
