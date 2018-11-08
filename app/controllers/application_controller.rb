class ApplicationController < ActionController::Base
    
     protect_from_forgery with: :exception
     before_action :configure_permitted_parameters, if: :devise_controller?
     before_action :setup_search

    protected
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :preferred_name, :email, :password, :password_confirmation, :remember_me, :avatar, :avatar_cache, :remove_avatar) }
        devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :preferred_name, :email, :password, :password_confirmation, :current_password, :avatar, :avatar_cache, :remove_avatar) }
    end

    def setup_search
        @search = Listing.ransack(params[:q])
        @listings = @search.result.order(created_at: :desc).paginate(page: params[:page], per_page: 9)
    end

end
