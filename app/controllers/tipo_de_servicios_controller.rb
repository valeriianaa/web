class TipoDeServiciosController < ApplicationController
  before_action :set_tipo_de_servicio, only: [:show, :edit, :update, :destroy]

  # GET /tipo_de_servicios
  # GET /tipo_de_servicios.json
  def index
    @tipo_de_servicios = TipoDeServicio.all
  end

  # GET /tipo_de_servicios/1
  # GET /tipo_de_servicios/1.json
  def show
  end

  # GET /tipo_de_servicios/new
  def new
    @tipo_de_servicio = TipoDeServicio.new
  end

  # GET /tipo_de_servicios/1/edit
  def edit
  end

  # POST /tipo_de_servicios
  # POST /tipo_de_servicios.json
  def create
    @tipo_de_servicio = TipoDeServicio.new(tipo_de_servicio_params)

    respond_to do |format|
      if @tipo_de_servicio.save
        format.html { redirect_to @tipo_de_servicio, notice: 'Tipo de servicio was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_de_servicio }
      else
        format.html { render :new }
        format.json { render json: @tipo_de_servicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_de_servicios/1
  # PATCH/PUT /tipo_de_servicios/1.json
  def update
    respond_to do |format|
      if @tipo_de_servicio.update(tipo_de_servicio_params)
        format.html { redirect_to @tipo_de_servicio, notice: 'Tipo de servicio was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_de_servicio }
      else
        format.html { render :edit }
        format.json { render json: @tipo_de_servicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_de_servicios/1
  # DELETE /tipo_de_servicios/1.json
  def destroy
    @tipo_de_servicio.destroy
    respond_to do |format|
      format.html { redirect_to tipo_de_servicios_url, notice: 'Tipo de servicio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_de_servicio
      @tipo_de_servicio = TipoDeServicio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_de_servicio_params
      params.require(:tipo_de_servicio).permit(:nombre)
    end
end
