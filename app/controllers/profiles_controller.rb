class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update]

  def my_profile
    unless current_user.profile.present?
      current_user.profile = Profile.create
    end
    redirect_to current_user.profile

  end

  def show
    @user = current_user
  end

  def edit
    if current_user.profile == @profile
      render :edit
    else
      redirect_to root_path, notice: 'Usuario indevido'
    end
  end

  def update

  end

  private

  def set_profile
    @profile = Profile.find(params[:id])
  end
end
