# Imagen base de Odoo 17
FROM odoo:17

# Variables de entorno
ENV ODOO_USER=odoo \
    ODOO_RC=/etc/odoo/odoo.conf

# Copiar configuración personalizada si existe
COPY ./odoo.conf /etc/odoo/odoo.conf

# Exponer el puerto donde corre Odoo
EXPOSE 8069

# Comando de inicio
CMD ["odoo", "-c", "/etc/odoo/odoo.conf"]
