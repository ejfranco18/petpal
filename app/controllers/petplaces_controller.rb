class PetplacesController < ApplicationController
  def index

    @petplaces = Petplace.all
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

  def edit
    @petplace = Petplace.find(params[:id])
  end

  def update
    @petplace = Petplace.find(params[:id])
    @petplace.update(petplace_params)
    redirect_to petplace_path(@petplace)
  end

  def destroy
    @petplace = Petplace.find(params[:id])
    @petplace.destroy
    redirect_to petplaces_path, notice: 'Petplace was successfully destroyed.'
  end

  private

  def petplace_params
    params.require(:petplace).permit(:name, :address, :details, :price, :images)
  end
end


# edit, update, destroy tole je destination
