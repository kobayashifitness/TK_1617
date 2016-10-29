class ProfilesController < ApplicationController
  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new
    @profile.user_id = current_user.id
  end

  def update
  end

end
