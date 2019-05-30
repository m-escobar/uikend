class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update]

  def my_profile
    unless current_user.profile.present?
      current_user.profile = Profile.create
    end
    redirect_to current_user.profile

  end

  def show
    if current_user.profile == @profile
      render :show
      @user = current_user
    else
      redirect_to root_path, notice: 'Usuario indevido'
    end
  end

  def edit
    if current_user.profile == @profile
      render :edit
    else
      redirect_to root_path, notice: 'Usuario indevido'
    end
  end

  def update
    @profile.update(profile_params)
    if @profile.save
        redirect_to @profile, notice: 'Perfil editado com sucesso.'
    else
        render :edit
    end
  end

  private

  def set_profile
    @profile = Profile.find(params[:id])
  end

  def profile_params
    params.require(:profile).permit(:name, :cpf, :phone,
                                 :company, :photo)
  end
end
