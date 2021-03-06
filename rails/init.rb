# -*- coding: utf-8 -*-
# initialize
plugin_root = File.expand_path(File.join(File.dirname(__FILE__), '..'))

Dir.glob(File.join(plugin_root, 'lib', '*.rb')).each do |f|
  require(f)
end

config.gem "ruby-openid", :lib => 'openid'
config.gem "okkez-open_id_authentication", :lib => 'open_id_authentication'
#config.gem "open_id_authentication"
config.gem "validates_email_format_of"
config.gem "locale", :version => ">= 2.0.4"
config.gem "locale_rails", :version => ">= 2.0.4"
config.gem "gettext", :version => ">= 2.0.4"
config.gem "gettext_activerecord", :version => ">= 2.0.4"
config.gem "gettext_rails", :version => ">= 2.0.4"
config.gem "nayutaya-active-form", :lib => "active_form"

unless File.exist?(Rails.root + "config/smtp.yml")
  FileUtils.cp(File.join(plugin_root, 'config/smtp.yml.sample'),
               Rails.root + "config/smtp.yml",
               :verbose => true)
end

# FIXME: これで正しいのかもう少し考える
config.action_mailer.raise_delivery_errors = true
config.action_mailer.delivery_method = :smtp
config.action_mailer.smtp_settings = YAML.load_file(Rails.root + "config/smtp.yml")

config.to_prepare do
  ActiveRecord::Base.__send__(:extend, MultiAuth::ActiveRecord::ClassMethods)
  ActionController::Base.__send__(:extend, MultiAuth::ActionController::ClassMethods)
  ActionController::Base.__send__(:include, MultiAuth::ActionController::InstanceMethods)
end
