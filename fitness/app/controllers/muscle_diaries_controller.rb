class MuscleDiariesController < ApplicationController
  before_action :set_muscle_diary, only: [:show, :edit, :update, :destroy]

  # GET /muscle_diaries
  # GET /muscle_diaries.json
  def index
    @muscle_diaries = MuscleDiary.all
  end

  # GET /muscle_diaries/1
  # GET /muscle_diaries/1.json
  def show
  end

  # GET /muscle_diaries/new
  def new
    @muscle_diary = MuscleDiary.new
  end

  # GET /muscle_diaries/1/edit
  def edit
  end

  # POST /muscle_diaries
  # POST /muscle_diaries.json
  def create

    @event = Event.new(event_params)
    @muscle_diary = MuscleDiary.new(muscle_diary_params)
    @muscle_diary.user_id = current_user.id

    @input_datetime = InputDatetimeDiary.new(input_datetime_diary_params)

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

      @muscle_diary.diary_date = @reformat
    #もし入力メニューが既存なら
    if Event.find_by(event_name: @event.event_name) != nil
      @muscle_diary.event_id =  Event.find_by(event_name: @event.event_name).id
    else

      @event.save
      @muscle_diary.event_id =  Event.last.id
    end

    respond_to do |format|
      if @muscle_diary.save
        format.html { redirect_to '/', notice: '日記をつけました。ナイスバルク！' }
        format.json { render action: 'show', status: :created, location: @muscle_diary }
      else
        format.html { render action: 'new' }
        format.json { render json: @muscle_diary.errors, status: :unprocessable_entity }
      end
    end


  end

  # PATCH/PUT /muscle_diaries/1
  # PATCH/PUT /muscle_diaries/1.json
  def update
    respond_to do |format|
      if @muscle_diary.update(muscle_diary_params)
        format.html { redirect_to @muscle_diary, notice: '日記を更新しました。ナイスカット！' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @muscle_diary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /muscle_diaries/1
  # DELETE /muscle_diaries/1.json
  def destroy
    @muscle_diary.destroy
    respond_to do |format|
      format.html { redirect_to muscle_diaries_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_muscle_diary
      @muscle_diary = MuscleDiary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def muscle_diary_params

      params.require(:muscle_diary).permit(:weight, :num, :set_num ,:note)

    end
    def event_params

      params.require(:event).permit(:event_name)

    end
    def input_datetime_diary_params
      params.require(:input_datetime_diary).permit(:datetime)
    end
end
