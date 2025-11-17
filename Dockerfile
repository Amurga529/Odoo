FROM odoo:18.0

USER root

RUN apt-get update && apt-get install -y postgresql-client && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /mnt/extra-addons &&     chown -R odoo:odoo /mnt/extra-addons

COPY odoo.conf /etc/odoo/odoo.conf
RUN chown odoo:odoo /etc/odoo/odoo.conf

USER odoo

ENV PORT=8069

CMD ["bash", "-c", "odoo --config=/etc/odoo/odoo.conf --http-port=$PORT"]
