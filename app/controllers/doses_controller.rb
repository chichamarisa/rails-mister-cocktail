class DosesController < ApplicationController

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to @cocktail
    else
      render 'cocktails/new'
    end
  end

  def delete
    @cocktail = Cocktail.find(params[:cocktail_id])
    @cocktail.delete
  end

  private

  def dose_params
    params.require(:dose).permit(:description)
  end

end
