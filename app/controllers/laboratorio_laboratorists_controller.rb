class LaboratorioLaboratoristsController < ApplicationController
  before_action :set_laboratorio_laboratorist, only: [:show, :edit, :update, :destroy]

  # GET /laboratorio_laboratorists
  # GET /laboratorio_laboratorists.json
  def index
    @laboratorio_laboratorists = LaboratorioLaboratorist.all
  end

  # GET /laboratorio_laboratorists/1
  # GET /laboratorio_laboratorists/1.json
  def show
  end

  # GET /laboratorio_laboratorists/new
  def new
    @laboratorio_laboratorist = LaboratorioLaboratorist.new
  end

  # GET /laboratorio_laboratorists/1/edit
  def edit
  end

  # POST /laboratorio_laboratorists
  # POST /laboratorio_laboratorists.json
  def create
    @laboratorio_laboratorist = LaboratorioLaboratorist.new(laboratorio_laboratorist_params)

    respond_to do |format|
      if @laboratorio_laboratorist.save
        format.html { redirect_to @laboratorio_laboratorist, notice: 'Laboratorio laboratorist was successfully created.' }
        format.json { render :show, status: :created, location: @laboratorio_laboratorist }
      else
        format.html { render :new }
        format.json { render json: @laboratorio_laboratorist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /laboratorio_laboratorists/1
  # PATCH/PUT /laboratorio_laboratorists/1.json
  def update
    respond_to do |format|
      if @laboratorio_laboratorist.update(laboratorio_laboratorist_params)
        format.html { redirect_to @laboratorio_laboratorist, notice: 'Laboratorio laboratorist was successfully updated.' }
        format.json { render :show, status: :ok, location: @laboratorio_laboratorist }
      else
        format.html { render :edit }
        format.json { render json: @laboratorio_laboratorist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /laboratorio_laboratorists/1
  # DELETE /laboratorio_laboratorists/1.json
  def destroy
    @laboratorio_laboratorist.destroy
    respond_to do |format|
      format.html { redirect_to laboratorio_laboratorists_url, notice: 'Laboratorio laboratorist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_laboratorio_laboratorist
      @laboratorio_laboratorist = LaboratorioLaboratorist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def laboratorio_laboratorist_params
      params.require(:laboratorio_laboratorist).permit(:id_laboratorio, :rut_usuario, :hora_apertura, :hora_cierre)
    end
end
