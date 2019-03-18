class GatineosController < ApplicationController
  before_action :set_gatineo, only: [:show, :edit, :update, :destroy]

  # GET /gatineos
  # GET /gatineos.json
  def index
    @gatineos = Gatineo.all
  end

  # GET /gatineos/1
  # GET /gatineos/1.json
  def show
  end

  # GET /gatineos/new
  def new
    @gatineo = Gatineo.new
  end

  # GET /gatineos/1/edit
  def edit
  end

  # POST /gatineos
  # POST /gatineos.json
  def create
    @gatineo = Gatineo.new(gatineo_params)

    respond_to do |format|
      if @gatineo.save
        format.html { redirect_to @gatineo, notice: 'Gatineo was successfully created.' }
        format.json { render :show, status: :created, location: @gatineo }
      else
        format.html { render :new }
        format.json { render json: @gatineo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gatineos/1
  # PATCH/PUT /gatineos/1.json
  def update
    respond_to do |format|
      if @gatineo.update(gatineo_params)
        format.html { redirect_to @gatineo, notice: 'Gatineo was successfully updated.' }
        format.json { render :show, status: :ok, location: @gatineo }
      else
        format.html { render :edit }
        format.json { render json: @gatineo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gatineos/1
  # DELETE /gatineos/1.json
  def destroy
    @gatineo.destroy
    respond_to do |format|
      format.html { redirect_to gatineos_url, notice: 'Gatineo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gatineo
      @gatineo = Gatineo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gatineo_params
      params.require(:gatineo).permit(:Name, :Cor, :Tutor, :Raça)
    end
end
