class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  # GET /profiles
  # GET /profiles.json
  def index
    @profiles = Profile.all
    @profile = Profile.find_by(user_id: current_user.id)
    if @profile.nil?
      redirect_to :action => 'new'
    else
      redirect_to @profile
    end
  end

  # GET /profiles/1
  # GET /profiles/1.json
  def show
    if Profile.find(params[:id].to_i).public_profile == 1 ||  params[:id].to_i == current_user.profile.id
      @profile = Profile.find(params[:id])
      @session_id = params[:id].to_i
    else
      redirect_to '/'
    end
  end

  # GET /profiles/new
  def new
    @profile = Profile.new
  end

  # GET /profiles/1/edit
  def edit
    @profile = Profile.find(params[:id])
    render :edit
  end

  # POST /profiles
  # POST /profiles.json
  def create
    @profile = Profile.new(profile_params)

    respond_to do |format|
      if @profile.save
        format.html { redirect_to @profile, notice: 'Profile was successfully created.' }
        format.json { render action: 'show', status: :created, location: @profile }
      else
        format.html { render action: 'new' }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to @profile, notice: 'Profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
    @profile.destroy
    respond_to do |format|
      format.html { redirect_to profiles_url }
      format.json { head :no_content }
    end
  end

  def search #検索ページ
    @min_age = params[:min_age]
    @max_age = params[:max_age]
    @muscle_id = params[:muscle]
    @sex = params[:sex]
    @adress = params[:address]
    @min_weight_bench = params[:min_weight_bench]
    @max_weight_bench = params[:max_weight_bench]
    @min_weight_ded = params[:min_weight_ded]
    @max_weight_ded = params[:max_weight_ded]
    @min_weight_full = params[:min_weight_full]
    @max_weight_full = params[:max_weight_full]
    t = Time.zone.now
    @date = t.strftime("%Y-%m-%d").to_date
    if @min_age == nil
      @min_age = 18
    end
    if @max_age == nil
       @max_age = 100
    end
    if @min_weight_bench == nil
      @min_weight_bench = 0
    end
    if @min_weight_ded == nil
      @min_weight_ded = 0
    end
    if @min_weight_full == nil
      @min_weight_full = 0
    end
    if @max_weight_bench == nil
      @max_weight_bench = 200
    end
    if @max_weight_ded == nil
      @max_weight_ded = 200
    end
    if @max_weight_full == nil
      @max_weight_full = 200
    end
    if @muscle_id != nil
      @muscle_id = @muscle_id.values[0]
    end
    if Profile.find(current_user.id).sex == 'male'
      @profiles = Profile.where(sex: 'male').where(public_profile: 1).where('birthday >=? AND birthday <= ?',@date - @max_age.to_i.year ,@date - @min_age.to_i.year )
      if @muscle_id != nil && @muscle_id != ""
      @profiles = @profiles.where(muscle_id: @muscle_id)
      end
      if @adress != nil
      end

    else
    @profiles =Profile.all.where(public_profile: 1).where(public_profile: 1).where('birthday >=? AND birthday <= ?',@date - @max_age.to_i.year ,@date - @min_age.to_i.year )
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:user_id, :name, :sex, :comment, :address, :birthday, :image,:muscle_id,:public_profile)
    end
end
