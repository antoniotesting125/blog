class RecomendacionesController < ApplicationController
  before_action :set_recomendacion, only: %i[ show edit update destroy ]

  # GET /recomendaciones or /recomendaciones.json
  def index
    @recomendaciones = Recomendacion.all
  end

  # GET /recomendaciones/1 or /recomendaciones/1.json
  def show
  end

  # GET /recomendaciones/new
  def new
    @recomendacion = Recomendacion.new
  end

  # GET /recomendaciones/1/edit
  def edit
  end

  # POST /recomendaciones or /recomendaciones.json
  def create
    @recomendacion = Recomendacion.new(recomendacion_params)

    respond_to do |format|
      if @recomendacion.save
        format.html { redirect_to @recomendacion, notice: "Recomendacion was successfully created." }
        format.json { render :show, status: :created, location: @recomendacion }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @recomendacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recomendaciones/1 or /recomendaciones/1.json
  def update
    respond_to do |format|
      if @recomendacion.update(recomendacion_params)
        format.html { redirect_to @recomendacion, notice: "Recomendacion was successfully updated." }
        format.json { render :show, status: :ok, location: @recomendacion }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @recomendacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recomendaciones/1 or /recomendaciones/1.json
  def destroy
    @recomendacion.destroy
    respond_to do |format|
      format.html { redirect_to recomendaciones_url, notice: "Recomendacion was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recomendacion
      @recomendacion = Recomendacion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def recomendacion_params
      params.require(:recomendacion).permit(:titulo, :contenido, :user_id)
    end
end
