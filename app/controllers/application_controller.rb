class ApplicationController < ActionController::Base
  before_action :authenticate_user!, :only => [:show, :index]
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # # # sign_inのときに、group_keyも許可する
    #   devise_parameter_sanitizer.permit(:sign_in, keys:[:group_key])
    # # sign_upのときに、group_keyも許可する
    #   devise_parameter_sanitizer.permit(:sign_up, keys:[:group_key])
    # # account_updateのときに、group_keyも許可する
    #   devise_parameter_sanitizer.permit(:account_update, keys:[:group_key])

    # ストロングパラメータの設定を1つにまとめられるか？
    # →OK!
      devise_parameter_sanitizer.permit([:sign_in, :sign_up, :account_update], keys:[:group_key])

  end
end
