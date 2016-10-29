class MymenusController < ApplicationController
  before_action :set_mymenu, only: [:show, :edit, :update, :destroy]

  # GET /mymenus
  # GET /mymenus.json
  def index
    @mymenus = Mymenu.all
  end

  # GET /mymenus/1
  # GET /mymenus/1.json
  def show
  end

  # GET /mymenus/new
  def new
    @mymenu = Mymenu.new
  end

  # GET /mymenus/1/edit
  def edit
  end

  # POST /mymenus
  # POST /mymenus.json
  def create
    @mymenu = Mymenu.new(mymenu_params)

    respond_to do |format|
      if @mymenu.save
        format.html { redirect_to @mymenu, notice: 'Mymenu was successfully created.' }
        format.json { render action: 'show', status: :created, location: @mymenu }
      else
        format.html { render action: 'new' }
        format.json { render json: @mymenu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mymenus/1
  # PATCH/PUT /mymenus/1.json
  def update
    respond_to do |format|
      if @mymenu.update(mymenu_params)
        format.html { redirect_to @mymenu, notice: 'Mymenu was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @mymenu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mymenus/1
  # DELETE /mymenus/1.json
  def destroy
    @mymenu.destroy
    respond_to do |format|
      format.html { redirect_to mymenus_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mymenu
      @mymenu = Mymenu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mymenu_params
      params[:mymenu]
    end
end
