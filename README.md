# Odoo 18 on Render (Free Tier)

Repository to deploy **Odoo 18 Community** on **Render free tier**.

### Deployment steps inside Render:

1. Create PostgreSQL (Free)
2. Create Web Service → Docker → connect this repo
3. Add environment variables (PGHOST, PGPORT, PGUSER, PGPASSWORD, PGDATABASE, ODOO_MASTER_PASS)
4. Deploy
