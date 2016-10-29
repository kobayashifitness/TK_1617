class MuscleMassesController < ApplicationController
  before_action :set_muscle_mass, only: [:show, :edit, :update, :destroy]

  # GET /muscle_masses
  # GET /muscle_masses.json
  def index
    @muscle_masses = MuscleMass.all
  end

  # GET /muscle_masses/1
  # GET /muscle_masses/1.json
  def show
  end

  # GET /muscle_masses/new
  def new
    @muscle_mass = MuscleMass.new
  end

  # GET /muscle_masses/1/edit
  def edit
  end

  # POST /muscle_masses
  # POST /muscle_masses.json
  def create
    @muscle_mass = MuscleMass.new(muscle_mass_params)
    @height = Height.new(height_params)
    @weight = Weight.new(weight_params)
    @flag = 0
    @input_datetime = InputDatetime.new(input_datetime_params)

      str = @input_datetime.datetime.to_s
      if str != (Time.zone.now.strftime("%Y-%m-%d").to_s + " 00:00")
        @year = str[6,4]
        @month = str[0,2]
        @day = str[3,2]
        @time = str[10,6]
        @reformat =  (@year + "-" + @month + "-" + @day + @time).to_datetime
      else
        @reformat = str.to_datetime
      end
      if str != nil

            if @muscle_mass.muscle_mass == nil
            elsif @muscle_mass.l_leg == nil
            elsif @muscle_mass.r_leg == nil
            elsif @muscle_mass.l_arm == nil
            elsif @muscle_mass.r_arm == nil
            elsif @muscle_mass.body == nil
            elsif @muscle_mass.fat == nil
            @muscle_mass.profile_id = current_user.profile.id
            @muscle_mass.diary_date = @reformat
            @muscle_mass.save
            @flag =1
            end
            if @height.height != nil
            @height.profile_id = current_user.profile.id
            @height.diary_date =  @reformat
            @height.save
            @flag =1
            end

            if @weight.weight != nil
            @weight.profile_id = current_user.profile.id
            @weight.diary_date =  @reformat
            @weight.save
            @flag =1
            end

      end

    respond_to do |format|
      if @flag == 1
        format.html { redirect_to "/", notice: 'データを入力しました。' }
        format.json { render action: 'show', status: :created, location: @muscle_mass }
      else
        format.html { render action: 'new' }
        format.json { render json: @muscle_mass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /muscle_masses/1
  # PATCH/PUT /muscle_masses/1.json
  def update
    respond_to do |format|
      if @muscle_mass.update(muscle_mass_params)
        format.html { redirect_to @muscle_mass, notice: 'Muscle mass was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @muscle_mass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /muscle_masses/1
  # DELETE /muscle_masses/1.json
  def destroy
    @muscle_mass.destroy
    respond_to do |format|
      format.html { redirect_to muscle_masses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_muscle_mass
      @muscle_mass = MuscleMass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.

    def muscle_mass_params
      params.require(:muscle_mass).permit( :muscle_mass, :l_arm, :r_arm, :l_leg, :r_reg, :body ,:fat)
    end

    def height_params
      params.require(:height).permit(:height)
    end

    def weight_params
      params.require(:weight).permit(:weight)
    end
    def input_datetime_params
      params.require(:input_datetime).permit(:datetime)
    end
end
