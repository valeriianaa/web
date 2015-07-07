class ReservasController < ApplicationController
  before_action :set_reserva, only: [:show, :edit, :update, :destroy]
  #include DatosDePasajesController

  # GET /reservas
  # GET /reservas.json
  def index
    @reservas = Reserva.all
  end

  # GET /reservas/1
  # GET /reservas/1.json
  def show

  end

  # GET /reservas/new
  def new
    @reserva = Reserva.new
    @datos_de_pasaje = DatosDePasaje.new
  end

  # GET /reservas/1/edit
  def edit
  end

  # POST /reservas
  # POST /reservas.json
  def create
    puts 'params[:datos_de_pasaje]', params[:datos_de_pasaje]
    puts 'params[:reserva]', params[:reserva]
    puts 'reserva_params', reserva_params

    p = params[:datos_de_pasaje][:pasajero_id]
    # s = params[:datos_de_pasaje][:servicio_id]
    asiento = params[:datos_de_pasaje][:asiento_de_servicio_id]

    @dp = DatosDePasaje.new(pasajero_id:p, asiento_de_servicio_id:asiento)
    @reserva = Reserva.new(reserva_params)
    @reserva.datos_de_pasaje = @dp
    @asiento = AsientoDeServicio.find(params[:datos_de_pasaje][:asiento_de_servicio_id])
    @dp.asiento_de_servicio = @asiento
    @asiento.estado = false

    # @reserva.save

    t = @reserva.transaction do
      @dp.save
      @reserva.save
      @asiento.save
    end

    respond_to do |format|
      if t
        format.html { redirect_to @reserva, notice: 'Reserva was successfully created.' }
        format.json { render :show, status: :created, location: @reserva }
      else
        format.html { render :new }
        format.json { render json: @reserva.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reservas/1
  # PATCH/PUT /reservas/1.json
  def update
    respond_to do |format|
      if @reserva.update(reserva_params)
        format.html { redirect_to @reserva, notice: 'Reserva was successfully updated.' }
        format.json { render :show, status: :ok, location: @reserva }
      else
        format.html { render :edit }
        format.json { render json: @reserva.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reservas/1
  # DELETE /reservas/1.json
  def destroy
    @reserva.destroy
    respond_to do |format|
      format.html { redirect_to reservas_url, notice: 'Reserva was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def cancelar_reserva
    @reserva = Reserva.find(params[:id])
    if @reserva.estado == 'Reservado'
      @datos_de_pasaje = DatosDePasaje.find(@reserva.datos_de_pasaje_id)
      @reserva = Reserva.update(@reserva.id, :estado => 'Cancelado')
      @asiento_de_servicio = AsientoDeServicio.update(@datos_de_pasaje.asiento_de_servicio_id, :estado => true)
      format.html { redirect_to @reserva, notice: 'Reserva fue cancelada' }
      format.json { render :show, status: :ok, location: @reserva }
    end
  end

  helper_method :cancelar_reserva

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reserva
      @reserva = Reserva.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reserva_params
      params.require(:reserva).permit(:estado)
    end
end
