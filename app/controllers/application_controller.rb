class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    @reservas = Reserva.all
  end

  def create_datopasaje
  	dp = DatosDePasajesController.new
  	dp.new
  	dp.create
    # @datos_de_pasaje = DatosDePasaje.new(datos_de_pasaje_params)

    # respond_to do |format|
    #   if @datos_de_pasaje.save
    #     format.html { redirect_to @datos_de_pasaje, notice: 'Datos de pasaje was successfully created.' }
    #     format.json { render :show, status: :created, location: @datos_de_pasaje }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @datos_de_pasaje.errors, status: :unprocessable_entity }
    #   end
    # end
  end
end
