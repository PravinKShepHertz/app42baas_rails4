class UserController < ApplicationController

  @@user_service = $api.buildUserService

  def new
  end

  def index
  	@user_list = @@user_service.get_all_users 
  end

  def create
  	begin
      @@user_service.create_user(params['user_name'], params['password'], params['email'])
      redirect_to user_index_path, notice: 'Thank you!, New user createed successfully.'
    rescue Exception => e
      redirect_to user_index_path, notice: "#{e.message}"
    end
  end
end
