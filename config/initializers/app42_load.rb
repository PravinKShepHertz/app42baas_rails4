require 'App42_RUBY_SDK'  
 
APP_CONFIG = YAML.load_file("#{Rails.root}/config/app42baas.yml")[Rails.env]
 
$api = App42::ServiceAPI.new(APP_CONFIG['api_key'], APP_CONFIG['secret_key'] ) 