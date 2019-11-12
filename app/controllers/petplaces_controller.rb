class PetplacesController < ApplicationController
  def index
    # @petplaces = Petplace.all
    @petplaces = policy_scope(Petplace)
  end

  def show
    @petplace = Petplace.find(params[:id])
    authorize @petplace
  end
end
