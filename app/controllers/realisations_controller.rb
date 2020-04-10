class RealisationsController < ApplicationController
  before_action :set_realisation, only: [:show, :edit, :update, :destroy]

  def index
    @realisations = Realisation.all
  end

end
