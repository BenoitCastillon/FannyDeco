class RealisationsController < ApplicationController
  before_action :find_realisation, only: [:show, :edit, :update, :destroy]

  # GET /realisations
  def index
    @realisations = Realisation.all
  end

  # GET /realisations/new
  def show
    @realisation = Realisation.find(params[:id])
  end

  # GET /realisations/1
  def new
    @realisation = Realisation.new
  end

  # GET /realisations/1/edit
  def edit
  end

  # POST /realisations/
  def create
    @realisation = Realisation.new(realisation_params)
    if @realisation.save
      redirect_to @realisation, notice: "Realisation was successfully created."
    else
      render :new
    end
  end

  # PATCH/PUT /realisations/1
  def update
    if @realisation.update(realisation_params)
      redirect_to @realisation, notice: "Realisation was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /realisations/1
  def destroy
    @realisation.destroy
    redirect_to realisations_path, notice: 'Realisation was successfully destroyed.'
  end

  private

  # Callbacks to share common steup or constraints between actions
  def find_realisation
    @realisation = Realisation.find(params[:id])
  end

  # Only allow a trusted parameter "white list" approach
  def realisation_params
    params.require(:realisation).permit(:name, :category, :description, :photo)
  end
end
