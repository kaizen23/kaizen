class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user
  before_filter { |c| Authorization.current_user = c.current_user }
  before_filter :set_locale
  
  
def set_locale
  I18n.locale = params[:locale] || I18n.default_locale
end
# app/controllers/application_controller.rb
def default_url_options(options={})
  logger.debug "default_url_options is passed options: #{options.inspect}\n"
  { :locale => I18n.locale }
end
  
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
    
  end
  
  protected
  def confirm_login
   unless session[:user_id]
    flash[:notice] = "Please log in"
    redirect_to admin_path 
    return false
   else
    return true	
   end 	 
  end
private  

def role_chooser
@user=User.find(current_user.id) 
@user.roles.each do |role| 
@type = role.name
return @type
end 
end 
  
private 
def layout_chooser
 if (role_chooser=='Guest')
  return 'guest'
 else
  return 'accessible'
 end 
end  
 
 

def permission_denied
  flash[:error] = "Sorry, you not allowed to access that page."
  redirect_to root_url
end

 

  
end
