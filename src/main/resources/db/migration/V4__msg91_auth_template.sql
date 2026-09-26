SET search_path TO industrendindia,pg_catalog;
INSERT INTO app_config(config_key,config_value,description) VALUES
('notification.msg91.whatsapp.template_name','indus_otp_auth','Approved WhatsApp authentication OTP template'),
('notification.msg91.whatsapp.namespace','fbdc924e_ff44_4429_aab6_774b16428de0','Approved WhatsApp template namespace')
ON CONFLICT(config_key) DO UPDATE SET config_value=excluded.config_value,description=excluded.description,updated_at=clock_timestamp(),updated_by=current_user;
