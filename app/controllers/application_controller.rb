class ApplicationController < ActionController::Base
  
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper

  def set_parent_id(pid)
    cookies.permanent[:diction_parent_id] = pid
  end
  def get_parent_id
    cookies.permanent[:diction_parent_id]
  end
  
  

end
