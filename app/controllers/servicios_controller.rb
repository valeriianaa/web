class ServiciosController < ApplicationController
  before_action :set_servicio, only: [:show, :edit, :update, :destroy]

  # GET /servicios
  # GET /servicios.json
  def index
    @servicios = Servicio.all
  end

  # GET /servicios/1
  # GET /servicios/1.json
  def show
  end

  # GET /servicios/new
  def new
    @servicio = Servicio.new
  end

  # GET /servicios/1/edit
  def edit
  end

  # def create_asientos
    
  # end

  # POST /servicios
  # # POST /servicios.json
  def create
    @servicio = Servicio.new(servicio_params)
    respond_to do |format|
      # Creacion de Asientos de Servicio para el Servicio recien creado
      t = @servicio.transaction do
        @servicio.save
        for i in 1..@servicio.unidad.cantAsientos
          AsientoDeServicio.create(nro: i, estado: true, servicio_id: @servicio.id)
        end
      end
      if t
        format.html { redirect_to @servicio, notice: 'Servicio was successfully created.' }
        format.json { render :show, status: :created, location: @servicio }
      else
        format.html { render :new }
        format.json { render json: @servicio.errors, status: :unprocessable_entity }
      end
    end   
  end

  # PATCH/PUT /servicios/1
  # PATCH/PUT /servicios/1.json
  def update
    respond_to do |format|
      if @servicio.update(servicio_params)
        format.html { redirect_to @servicio, notice: 'Servicio was successfully updated.' }
        format.json { render :show, status: :ok, location: @servicio }
      else
        format.html { render :edit }
        format.json { render json: @servicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /servicios/1
  # DELETE /servicios/1.json
  def destroy
    @servicio.destroy
    respond_to do |format|
      format.html { redirect_to servicios_url, notice: 'Servicio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def asientos_disponibles
    puts 'asientos_disponibles > params[:id]', params[:id]
    @asientos = Servicio.asientosDisponibles(params[:id])
    render :partial => 'asientos_disponibles'
  end

  def servicios_with_paradas_and_date
    po = Parada.find(params[:parada_origen])
    pd = Parada.find(params[:parada_destino])
    fecha = Time.new(params[:date][:year], params[:date][:month], params[:date][:day]).to_date
    @servicios = Servicio.buscarServicio(po, pd, fecha)
    render :partial => 'td_table_servicios'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_servicio
      @servicio = Servicio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def servicio_params
      params.require(:servicio).permit(:fecha, :horaSalida, :horaLlegada, :unidad_id, :itinerario_id)
    end
end
