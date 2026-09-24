SET search_path TO industrendindia,pg_catalog;
INSERT INTO app_config(config_key,config_value,description) VALUES
('notification.msg91.whatsapp.endpoint','https://api.msg91.com/api/v5/whatsapp/whatsapp-outbound-message/bulk/','MSG91 WhatsApp bulk API endpoint'),
('notification.msg91.whatsapp.integrated_number','919356419345','Registered MSG91 WhatsApp number'),
('notification.msg91.whatsapp.template_name','indus_newotp','Approved WhatsApp OTP template'),
('notification.msg91.whatsapp.language','en','WhatsApp template language'),
('notification.provider','msg91_whatsapp','Active OTP notification provider')
ON CONFLICT(config_key) DO UPDATE SET config_value=excluded.config_value,description=excluded.description,updated_at=clock_timestamp(),updated_by=current_user;
