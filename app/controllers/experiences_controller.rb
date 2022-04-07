class ExperiencesController < ApplicationController
  def index
    @experiences = Experience.all.order("updated_at DESC")
  end

  def new
    @experience = Experience.new
  end

  def create
    @experience = Experience.new(experience_params)
    if @experience.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @experience = Experience.find(params[:id])
    @experience.destroy
    redirect_to root_path
  end

  private

  def experience_params
    params.require(:experience).permit(:logo, :description, :start, :end, :company_name, :role)
  end
end
