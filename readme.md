# Configure local development

Export the location to the default service account: eg: `export GOOGLE_APPLICATION_CREDENTIALS="/home/rich/Documents/projects/smg/extream/IaaC/service-accounts/stoked-reality-284921-f992d9f7a6cb.json"`

## Accessing Cloud SQL database locally

`./cloud_sql_proxy -instances=stoked-reality-284921:europe-west2:extream=tcp:5432`

Test the connection: `psql "host=127.0.0.1 port=5432 sslmode=disable dbname=ex-manage user=postgres"`