class PeliculaSeriesController < ApplicationController
  before_action :set_pelicula_series, only: [:show, :update, :destroy]

  # GET /pelicula_series
  def index
    @pelicula_series = PeliculaSerie.all

    render json: @pelicula_series.to_json(only: [:imagen, :titulo, :fecha_creacion])
  end

  # GET /pelicula_series/1
  def show
    render json: @pelicula_series
  end

  # POST /pelicula_series
  def create
    @pelicula_series = PeliculaSerie.new(pelicula_series_params)

    if @pelicula_series.save
      render json: @pelicula_series, status: :created, location: @pelicula_series
    else
      render json: @pelicula_series.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pelicula_series/1
  def update
    if @pelicula_series.update(pelicula_series_params)
      render json: @pelicula_series
    else
      render json: @pelicula_series.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pelicula_series/1
  def destroy
    @pelicula_series.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pelicula_series
      @pelicula_series = PeliculaSerie.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pelicula_series_params
        params.require(:pelicula_series).permit(:imagen, :titulo, :fecha_creacion, :calificacion)
        #params.fetch(:pelicula_series, {})
    end
end
