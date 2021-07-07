class UsersController < ApplicationController
  before_action :set_user, only: [:show, :destroy, :edit, :update]
  def show
  end

  def edit
    
  end

  def update
    if @user.update(user_params)
      flash[:notice] = "編集が完了しました"
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :last_name, :first_name, :last_name_reading, :first_name_reading, :birthday, :introduction, :grade_id, :classroom_id, :number_id, :image)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
