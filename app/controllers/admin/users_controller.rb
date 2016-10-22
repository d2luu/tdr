class Admin::UsersController < ApplicationController
  load_and_authorize_resource

  def index
    @search = User.search(params[:q])
    @users = @search.result
  end

  def destroy
    if @user.destroy
      flash[:success] = "Delete Success"
    else
      flash[:danger] = "Delete Fail"
    end
    redirect_to admin_users_path
  end

  def show
  end
end
