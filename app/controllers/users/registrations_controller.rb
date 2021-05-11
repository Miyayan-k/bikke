class Users::RegistrationsController < Devise::RegistrationsController
  before_action :ensure_normal_user, only: [:edit, :update]
  
  protected

  def update_resource(resource, params)
    resource.update_without_password(params)
  end

  #更新後のパスを指定
  def after_update_path_for(resource)
    user_path(@user.id)
  end

  #ゲストユーザーはアカウント情報を編集・更新できない
  def ensure_normal_user
    if resource.email == 'guest@example.com'
      redirect_to root_path, alert: 'ゲストユーザーは編集できません。'
    end
  end
end
