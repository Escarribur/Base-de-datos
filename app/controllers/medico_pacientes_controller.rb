class MedicoPacientesController < ApplicationController
  before_action :set_medico_paciente, only: [:show, :edit, :update, :destroy]

  # GET /medico_pacientes
  # GET /medico_pacientes.json
  def index
    @medico_pacientes = MedicoPaciente.all
  end

  # GET /medico_pacientes/1
  # GET /medico_pacientes/1.json
  def show
  end

  # GET /medico_pacientes/new
  def new
    @medico_paciente = MedicoPaciente.new
  end

  # GET /medico_pacientes/1/edit
  def edit
  end

  # POST /medico_pacientes
  # POST /medico_pacientes.json
  def create
    @medico_paciente = MedicoPaciente.new(medico_paciente_params)

    respond_to do |format|
      if @medico_paciente.save
        format.html { redirect_to @medico_paciente, notice: 'Medico paciente was successfully created.' }
        format.json { render :show, status: :created, location: @medico_paciente }
      else
        format.html { render :new }
        format.json { render json: @medico_paciente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medico_pacientes/1
  # PATCH/PUT /medico_pacientes/1.json
  def update
    respond_to do |format|
      if @medico_paciente.update(medico_paciente_params)
        format.html { redirect_to @medico_paciente, notice: 'Medico paciente was successfully updated.' }
        format.json { render :show, status: :ok, location: @medico_paciente }
      else
        format.html { render :edit }
        format.json { render json: @medico_paciente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medico_pacientes/1
  # DELETE /medico_pacientes/1.json
  def destroy
    @medico_paciente.destroy
    respond_to do |format|
      format.html { redirect_to medico_pacientes_url, notice: 'Medico paciente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medico_paciente
      @medico_paciente = MedicoPaciente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medico_paciente_params
      params.require(:medico_paciente).permit(:rut_usuario, :med_rut_usuario, :fecha_consulta, :hora_consulta)
    end
end
