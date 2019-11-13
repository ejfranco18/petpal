class PetplacesController < ApplicationController
  def index
    if params[:query].present?
      @petplaces = Petplace.near(params[:query], '20')
    else
      @petplaces = Petplace.all

    end
    petplaces_geo = @petplaces.geocoded #returns flats with coordinates

    @markers = petplaces_geo.map do |petplace|
      {
        lat: petplace.latitude,
        lng: petplace.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { petplace: petplace }),
        image_url: helpers.asset_url('paw.png')
      }
    end
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
    redirect_to dashboard_path, notice: 'Petplace was successfully destroyed.'
  end

  private

  def petplace_params
    params.require(:petplace).permit(:name, :address, :details, :price, :images)
  end
end


# edit, update, destroy tole je destination
