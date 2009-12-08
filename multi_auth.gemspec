# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{multi_auth}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["okkez"]
  s.date = %q{2009-12-08}
  s.email = %q{}
  s.extra_rdoc_files = ["README"]
  s.files = ["app/helpers/application_helper.rb", "app/controllers/auth_controller.rb", "app/controllers/application_controller.rb", "app/controllers/credentials/email_controller.rb", "app/controllers/credentials/open_id_controller.rb", "app/controllers/auth/email_controller.rb", "app/controllers/auth/open_id_controller.rb", "app/controllers/signup_controller.rb", "app/controllers/credentials_controller.rb", "app/controllers/signup/email_controller.rb", "app/controllers/signup/open_id_controller.rb", "app/models/email_credential_edit_form.rb", "app/models/open_id_login_form.rb", "app/models/user.rb", "app/models/activation_mailer.rb", "app/models/email_credential.rb", "app/models/session.rb", "app/models/open_id_credential.rb", "app/models/email_login_form.rb", "app/models/email_password_edit_form.rb", "app/views/credentials/index.html.erb", "app/views/credentials/open_id/delete.html.erb", "app/views/credentials/open_id/new.html.erb", "app/views/credentials/email/edit_password.html.erb", "app/views/credentials/email/activated.html.erb", "app/views/credentials/email/delete.html.erb", "app/views/credentials/email/new.html.erb", "app/views/credentials/email/created.html.erb", "app/views/credentials/email/activation.html.erb", "app/views/auth/logged_out.html.erb", "app/views/auth/open_id/index.html.erb", "app/views/auth/email/index.html.erb", "app/views/auth/logged_in.html.erb", "app/views/activation_mailer/request_for_credential.erb", "app/views/activation_mailer/request_for_signup.erb", "app/views/activation_mailer/complete_for_notice.erb", "app/views/activation_mailer/request_for_notice.erb", "app/views/activation_mailer/complete_for_credential.erb", "app/views/activation_mailer/complete_for_signup.erb", "app/views/signup/index.html.erb", "app/views/signup/open_id/authenticated.html.erb", "app/views/signup/open_id/index.html.erb", "app/views/signup/open_id/created.html.erb", "app/views/signup/email/_progress.html.erb", "app/views/signup/email/activated.html.erb", "app/views/signup/email/index.html.erb", "app/views/signup/email/created.html.erb", "app/views/signup/email/validated.html.erb", "app/views/signup/email/activation.html.erb", "config/routes.rb", "config/smtp.yml.example", "config/environments", "config/database.yml.sqlite3", "config/environment.rb", "config/boot.rb", "config/database.yml", "config/locales", "config/initializers", "db/schema.rb", "db/development.sqlite3", "db/test.sqlite3", "db/migrate", "lib/action_mailer_util.rb", "lib/notice_formatter.rb", "lib/multi_auth.rb", "lib/multi_auth_helper.rb", "lib/token_util.rb", "lib/open_id_authentication/result.rb", "public/favicon.ico", "public/422.html", "public/503.html", "public/stylesheets", "public/stylesheets/home.css", "public/stylesheets/application.css", "public/stylesheets/auth.css", "public/500.html", "public/404.html", "public/javascripts", "public/javascripts/dragdrop.js", "public/javascripts/prototype.js", "public/javascripts/effects.js", "public/javascripts/controls.js", "public/javascripts/application.js", "public/images", "public/images/battery", "public/images/battery/level-red.png", "public/images/battery/level-orange.png", "public/images/battery/cell.png", "public/images/battery/level-green.png", "public/images/battery/level-yellow.png", "public/images/battery/style.html", "public/images/favicons", "public/images/favicons/yahoo.png", "public/images/favicons/livedoor.png", "public/images/favicons/mixi.png", "public/images/icons", "public/images/icons/openid.png", "public/images/icons/openid-with-desc.png", "public/images/icons/fam", "public/images/icons/fam/email-with-desc.png", "public/images/icons/fam/plugin.png", "public/images/icons/fam/key.png", "public/images/icons/fam/feed.png", "public/images/icons/fam/key-with-desc.png", "public/images/icons/fam/help.png", "public/images/icons/fam/cog.png", "public/images/icons/fam/add.png", "public/images/icons/fam/stop.png", "public/images/icons/fam/tick.png", "public/images/icons/fam/delete.png", "public/images/icons/fam/vcard.png", "public/images/icons/fam/table_save.png", "public/images/icons/fam/lightning.png", "public/images/icons/fam/email.png", "public/images/icons/fam/bin.png", "public/images/icons/fam/user.png", "public/images/icons/fam/bomb.png", "public/images/logo-back.png", "public/images/side-column-back.png", "public/images/logo.png", "public/images/h1-back.png", "public/robots.txt", "rails/init.rb", "test/unit/token_util_test.rb", "test/unit/open_id_login_form_test.rb", "test/unit/notice_formatter_test.rb", "test/unit/email_login_form_test.rb", "test/unit/helpers/open_id_signup_helper_test.rb", "test/unit/helpers/signup_helper_test.rb", "test/unit/helpers/password_signup_helper_test.rb", "test/unit/helpers/open_id_auth_helper_test.rb", "test/unit/helpers/password_auth_helper_test.rb", "test/unit/helpers/email_auth_helper_test.rb", "test/unit/helpers/credentials/email_helper_test.rb", "test/unit/helpers/credentials/open_id_helper_test.rb", "test/unit/helpers/email_signup_helper_test.rb", "test/unit/helpers/credentials_helper_test.rb", "test/unit/helpers/auth_helper_test.rb", "test/unit/action_mailer_util_test.rb", "test/unit/open_id_credential_test.rb", "test/unit/user_test.rb", "test/unit/activation_mailer_test.rb", "test/unit/session_test.rb", "test/unit/email_credential_test.rb", "test/unit/email_password_edit_form_test.rb", "test/unit/email_credential_edit_form_test.rb", "test/functional/signup_controller_test.rb", "test/functional/auth_controller_test.rb", "test/functional/credentials_controller_test.rb", "test/functional/credentials/open_id_controller_test.rb", "test/functional/credentials/email_controller_test.rb", "test/functional/auth/open_id_controller_test.rb", "test/functional/auth/email_controller_test.rb", "test/functional/signup/open_id_controller_test.rb", "test/functional/signup/email_controller_test.rb", "test/test_helper.rb", "test/performance/browsing_test.rb", "README"]
  s.homepage = %q{https://github.com/okkez/multi_auth}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{This Rails plugin provides basic login fanctionality}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<okkez-open_id_authentication>, [">= 0"])
      s.add_runtime_dependency(%q<validates_email_format_of>, [">= 0"])
    else
      s.add_dependency(%q<okkez-open_id_authentication>, [">= 0"])
      s.add_dependency(%q<validates_email_format_of>, [">= 0"])
    end
  else
    s.add_dependency(%q<okkez-open_id_authentication>, [">= 0"])
    s.add_dependency(%q<validates_email_format_of>, [">= 0"])
  end
end
