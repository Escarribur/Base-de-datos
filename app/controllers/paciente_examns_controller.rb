class PacienteExamnsController < ApplicationController
  before_action :set_paciente_examn, only: [:show, :edit, :update, :destroy]

  # GET /paciente_examns
  # GET /paciente_examns.json
  def index
    @paciente_examns = PacienteExamn.all
  end

  # GET /paciente_examns/1
  # GET /paciente_examns/1.json
  def show
  end

  # GET /paciente_examns/new
  def new
    @paciente_examn = PacienteExamn.new
  end

  # GET /paciente_examns/1/edit
  def edit
  end

  # POST /paciente_examns
  # POST /paciente_examns.json
  def create
    @paciente_examn = PacienteExamn.new(paciente_examn_params)

    respond_to do |format|
      if @paciente_examn.save
        format.html { redirect_to @paciente_examn, notice: 'Paciente examn was successfully created.' }
        format.json { render :show, status: :created, location: @paciente_examn }
      else
        format.html { render :new }
        format.json { render json: @paciente_examn.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paciente_examns/1
  # PATCH/PUT /paciente_examns/1.json
  def update
    respond_to do |format|
      if @paciente_examn.update(paciente_examn_params)
        format.html { redirect_to @paciente_examn, notice: 'Paciente examn was successfully updated.' }
        format.json { render :show, status: :ok, location: @paciente_examn }
      else
        format.html { render :edit }
        format.json { render json: @paciente_examn.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paciente_examns/1
  # DELETE /paciente_examns/1.json
  def destroy
    @paciente_examn.destroy
    respond_to do |format|
      format.html { redirect_to paciente_examns_url, notice: 'Paciente examn was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paciente_examn
      @paciente_examn = PacienteExamn.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paciente_examn_params
      params.require(:paciente_examn).permit(:id_examen, :rut_usuario, :med_rut_usuario, :estado_examen, :realizado, :fecha_caducacion_examen, :hora_caducacion, :fecha_realizacion, :caduco)
    end
end
