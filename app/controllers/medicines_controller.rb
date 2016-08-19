class MedicinesController < ApplicationController
  before_action :require_admin, only:[:new,:edit,:destroy]
  before_action :set_medicine, only: [:show, :edit, :update, :destroy]
  # GET /medicines
  # GET /medicines.json

  def index
    redirect = false
    if params.has_key?(:sort) && !params[:sort].nil?
      @sort = params[:sort] # Get sorting info from URL params
      session[:sort] = @sort
    elsif session.has_key?(:sort) && !session[:sort].nil?
      @sort = session[:sort] # Get sorting info from session cookie
      redirect = true
    else
      @sort = :id # Sort by ID by default
    end
    @medicines = Medicine.all()# Do a single database query with ordering and filtering
  end

  # GET /medicines/1
  # GET /medicines/1.json
  def show
  end

  # GET /medicines/new
  def new
    @medicine = Medicine.new
  end

  # GET /medicines/1/edit
  def edit
  end
  def search_results
  end
  # POST /medicines
  # POST /medicines.json
  def create
    @medicine = Medicine.new(medicine_params)

    respond_to do |format|
      if @medicine.save
        format.html { redirect_to @medicine, notice: 'Medicine was successfully created.' }
        format.json { render :show, status: :created, location: @medicine }
      else
        format.html { render :new }
        format.json { render json: @medicine.errors, status: :unprocessable_entity }
      end
    end
  end
  def search
  end
  # PATCH/PUT /medicines/1
  # PATCH/PUT /medicines/1.json
  def update
    respond_to do |format|
      if @medicine.update(medicine_params)
        format.html { redirect_to @medicine, notice: 'Medicine was successfully updated.' }
        format.json { render :show, status: :ok, location: @medicine }
      else
        format.html { render :edit }
        format.json { render json: @medicine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medicines/1
  # DELETE /medicines/1.json
  def destroy
    @medicine.destroy
    respond_to do |format|
      format.html { redirect_to medicines_url, notice: 'Medicine was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medicine
      @medicine = Medicine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medicine_params
      params.require(:medicine).permit(:generic, :brand, :price, :Quantity, :mg)
    end
end
