class PagesController < ApplicationController
  #skip_before_action :authenticate_user!, only: :home
  # skip_before_action :authenticate_user!

  def home
  end

  def dashboard
    if current_user
      @petplaces = Petplace.where("user_id = #{current_user.id}")
    else
      redirect_to new_user_session_path
    end
  end
end
