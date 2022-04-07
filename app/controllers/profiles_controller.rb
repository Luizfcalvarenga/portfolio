class ProfilesController < ApplicationController
  def index
    @profiles = Profile.all.order("updated_at DESC")
  end

  # def show
  #   @profile = Profile.find(params[:id])
  # end


  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    if @profile.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy

    @profile = Profile.find(params[:id])

    @profile.destroy


    redirect_to root_path
  end

  private

  def profile_params
    params.require(:profile).permit(:logo, :description, :start, :end)
  end
end
