class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: :home
  # skip_before_action :authenticate_user!

  def home
  end

  def dashboard
    @petplaces = Petplace.where("user_id = #{current_user.id}")


  end
end
