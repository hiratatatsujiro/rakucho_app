class UsersController < ApplicationController
  before_action :set_user, only: [:show, :destroy, :edit, :update]
  def show
    @user = User.find(params[:id])
  end
end
