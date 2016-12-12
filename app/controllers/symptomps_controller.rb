class SymptompsController < ApplicationController
  before_action :set_symptomp, only: [:show, :edit, :update, :destroy]

  # GET /symptomps
  # GET /symptomps.json
  def index
    @symptomps = Symptomp.all
  end

  # GET /symptomps/1
  # GET /symptomps/1.json
  def show
  end

  # GET /symptomps/new
  def new
    @symptomp = Symptomp.new
  end

  # GET /symptomps/1/edit
  def edit
  end

  # POST /symptomps
  # POST /symptomps.json
  def create
    @symptomp = Symptomp.new(symptomp_params)

    respond_to do |format|
      if @symptomp.save
        format.html { redirect_to @symptomp, notice: 'Symptomp was successfully created.' }
        format.json { render :show, status: :created, location: @symptomp }
      else
        format.html { render :new }
        format.json { render json: @symptomp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /symptomps/1
  # PATCH/PUT /symptomps/1.json
  def update
    respond_to do |format|
      if @symptomp.update(symptomp_params)
        format.html { redirect_to @symptomp, notice: 'Symptomp was successfully updated.' }
        format.json { render :show, status: :ok, location: @symptomp }
      else
        format.html { render :edit }
        format.json { render json: @symptomp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /symptomps/1
  # DELETE /symptomps/1.json
  def destroy
    @symptomp.destroy
    respond_to do |format|
      format.html { redirect_to symptomps_url, notice: 'Symptomp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_symptomp
      @symptomp = Symptomp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def symptomp_params
      params.require(:symptomp).permit(:symptompsName, :symptompsDesc)
    end
end
