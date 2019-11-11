class PetplacesController < ApplicationController
  def index
    @petplaces = Petplace.all
  end

  def show
    @petplace = Petplace.find(params[:id])
  end
end
