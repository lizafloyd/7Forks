class RegistrationsController < Devise::RegistrationsController

def new
  super
end

def create
  super
end

def update
  super
end

  protected
  def after_sign_up_path_for(resource)
    users_profile_path
  end

end
