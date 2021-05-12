class Users::RegistrationsController < Devise::RegistrationsController
  before_action :ensure_normal_user, only: [:edit, :update]

  protected

  def update_resource(resource, params)
    resource.update_without_current_password(params)
  end

  #更新後のパスを指定
  def after_update_path_for(resource)
    user_path(@user.id)
  end


  
end