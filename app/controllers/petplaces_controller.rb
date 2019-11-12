class PetplacesController < ApplicationController
  def index

    @petplaces = Petplace.all
  end

  def my_index

  end

  def show
    @petplace = Petplace.find(params[:id])
  end

  def new
    if current_user
      @user = current_user
      @petplace = Petplace.new
    end
  end

  def create
    if current_user
      @petplace = Petplace.create(petplace_params)
      @user = current_user
      @petplace.user = @user
      if @petplace.save
        redirect_to petplace_path(@petplace)
      else
        render :new
      end
    end
  end

  private

  def petplace_params
    params.require(:petplace).permit(:name, :address, :details, :price, :images)
  end
end
