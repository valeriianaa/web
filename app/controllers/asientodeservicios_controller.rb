class AsientodeserviciosController < ApplicationController
  before_action :set_asiento_de_servicio, only: [:show, :edit, :update, :destroy]

  # GET /asiento_de_servicios
  # GET /asiento_de_servicios.json
  def index
    @asiento_de_servicios = AsientoDeServicio.all
  end

  # GET /asiento_de_servicios/1
  # GET /asiento_de_servicios/1.json
  def show
  end

  # GET /asiento_de_servicios/new
  def new
    @asiento_de_servicio = AsientoDeServicio.new
  end

  # GET /asiento_de_servicios/1/edit
  def edit
  end

  # POST /asiento_de_servicios
  # POST /asiento_de_servicios.json
  def create
    @asiento_de_servicio = AsientoDeServicio.new(asiento_de_servicio_params)

    respond_to do |format|
      if @asiento_de_servicio.save
        format.html { redirect_to @asiento_de_servicio, notice: 'Asiento de servicio was successfully created.' }
        format.json { render :show, status: :created, location: @asiento_de_servicio }
      else
        format.html { render :new }
        format.json { render json: @asiento_de_servicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /asiento_de_servicios/1
  # PATCH/PUT /asiento_de_servicios/1.json
  def update
    respond_to do |format|
      if @asiento_de_servicio.update(asiento_de_servicio_params)
        format.html { redirect_to @asiento_de_servicio, notice: 'Asiento de servicio was successfully updated.' }
        format.json { render :show, status: :ok, location: @asiento_de_servicio }
      else
        format.html { render :edit }
        format.json { render json: @asiento_de_servicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asiento_de_servicios/1
  # DELETE /asiento_de_servicios/1.json
  def destroy
    @asiento_de_servicio.destroy
    respond_to do |format|
      format.html { redirect_to asiento_de_servicios_url, notice: 'Asiento de servicio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asiento_de_servicio
      @asiento_de_servicio = AsientoDeServicio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def asiento_de_servicio_params
      params.require(:asiento_de_servicio).permit(:nro, :estado)
    end
end
