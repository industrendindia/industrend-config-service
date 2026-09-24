SET search_path TO industrendindia,pg_catalog;
INSERT INTO app_config(config_key,config_value,description)
VALUES('notification.msg91.whatsapp.template_name','indusnewotp','Approved WhatsApp OTP template')
ON CONFLICT(config_key) DO UPDATE SET config_value=excluded.config_value,description=excluded.description,updated_at=clock_timestamp(),updated_by=current_user;
