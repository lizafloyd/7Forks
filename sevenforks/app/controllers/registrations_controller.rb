class RegistrationsController < Devise::RegistrationsController

  protected
  def after_sign_up_path_for(resource)
    profile_path
  end

  def after_sign_in_path_for(resource)
    puts "Hello"
    user_path(current_user)
  end

end
