class AuthentificationsController < ApplicationController
  
  def index
    render :layout => false
  end
  
  def login
    if params[:password] == 'dtktc7793'
      cookies['admin'] = 'true'
      redirect_to params[:return_to] || list_path
    else
      render :action => 'index', :layout => false
    end
  end
  
  def logout
    cookies['admin'] = ''
    redirect_to '/'
  end
end
