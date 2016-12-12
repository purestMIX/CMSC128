class MedSymptompsController < ApplicationController
  before_action :set_med_symptomp, only: [:show, :edit, :update, :destroy]

  # GET /med_symptomps
  # GET /med_symptomps.json
  def index
    @med_symptomps = MedSymptomp.all
  end

  # GET /med_symptomps/1
  # GET /med_symptomps/1.json
  def show
  end

  # GET /med_symptomps/new
  def new
    @med_symptomp = MedSymptomp.new
  end

  # GET /med_symptomps/1/edit
  def edit
  end

  # POST /med_symptomps
  # POST /med_symptomps.json
  def create
    @med_symptomp = MedSymptomp.new(med_symptomp_params)

    respond_to do |format|
      if @med_symptomp.save
        format.html { redirect_to @med_symptomp, notice: 'Med symptomp was successfully created.' }
        format.json { render :show, status: :created, location: @med_symptomp }
      else
        format.html { render :new }
        format.json { render json: @med_symptomp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /med_symptomps/1
  # PATCH/PUT /med_symptomps/1.json
  def update
    respond_to do |format|
      if @med_symptomp.update(med_symptomp_params)
        format.html { redirect_to @med_symptomp, notice: 'Med symptomp was successfully updated.' }
        format.json { render :show, status: :ok, location: @med_symptomp }
      else
        format.html { render :edit }
        format.json { render json: @med_symptomp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /med_symptomps/1
  # DELETE /med_symptomps/1.json
  def destroy
    @med_symptomp.destroy
    respond_to do |format|
      format.html { redirect_to med_symptomps_url, notice: 'Med symptomp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_med_symptomp
      @med_symptomp = MedSymptomp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def med_symptomp_params
      params.require(:med_symptomp).permit(:medsId, :symptompsId)
    end
end
