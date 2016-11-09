class UserSession < ActiveRecord::Base
form_for(@user)
form_for(:session, url: login_path)
end
