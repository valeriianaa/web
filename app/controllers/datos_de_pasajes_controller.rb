class DatosDePasajesController < ApplicationController
  before_action :set_datos_de_pasaje, only: [:show, :edit, :update, :destroy]

  # GET /datos_de_pasajes
  # GET /datos_de_pasajes.json
  def index
    @datos_de_pasajes = DatosDePasaje.all
  end

  # GET /datos_de_pasajes/1
  # GET /datos_de_pasajes/1.json
  def show
  end

  # GET /datos_de_pasajes/new
  def new
    @datos_de_pasaje = DatosDePasaje.new
  end

  # GET /datos_de_pasajes/1/edit
  def edit
  end

  # POST /datos_de_pasajes
  # POST /datos_de_pasajes.json
  def create
    @datos_de_pasaje = DatosDePasaje.new(datos_de_pasaje_params)

    respond_to do |format|
      if @datos_de_pasaje.save
        format.html { redirect_to @datos_de_pasaje, notice: 'Datos de pasaje was successfully created.' }
        format.json { render :show, status: :created, location: @datos_de_pasaje }
      else
        format.html { render :new }
        format.json { render json: @datos_de_pasaje.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /datos_de_pasajes/1
  # PATCH/PUT /datos_de_pasajes/1.json
  def update
    respond_to do |format|
      if @datos_de_pasaje.update(datos_de_pasaje_params)
        format.html { redirect_to @datos_de_pasaje, notice: 'Datos de pasaje was successfully updated.' }
        format.json { render :show, status: :ok, location: @datos_de_pasaje }
      else
        format.html { render :edit }
        format.json { render json: @datos_de_pasaje.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /datos_de_pasajes/1
  # DELETE /datos_de_pasajes/1.json
  def destroy
    @datos_de_pasaje.destroy
    respond_to do |format|
      format.html { redirect_to datos_de_pasajes_url, notice: 'Datos de pasaje was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  #private
    # Use callbacks to share common setup or constraints between actions.
    def set_datos_de_pasaje
      @datos_de_pasaje = DatosDePasaje.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def datos_de_pasaje_params
      #params.require[:datos_de_pasaje]
      params.require(:datos_de_pasaje).permit(:asiento_de_servicio_id, :pasajero_id)
    end
end
