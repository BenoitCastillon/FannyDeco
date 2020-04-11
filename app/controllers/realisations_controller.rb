class RealisationsController < ApplicationController
  before_action :set_realisation, only: [:show, :edit, :update, :destroy]


  # GET /realisations
  def index
    @realisations = Realisation.all
  end

  # GET /realisations/new
  def show
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
  end


end


    @realisation = Realisation.find(params[:id])
