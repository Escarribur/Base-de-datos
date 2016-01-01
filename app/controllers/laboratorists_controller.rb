class LaboratoristsController < ApplicationController
  before_action :set_laboratorist, only: [:show, :edit, :update, :destroy]

  # GET /laboratorists
  # GET /laboratorists.json
  def index
    @laboratorists = Laboratorist.all
  end

  # GET /laboratorists/1
  # GET /laboratorists/1.json
  def show
  end

  # GET /laboratorists/new
  def new
    @laboratorist = Laboratorist.new
  end

  # GET /laboratorists/1/edit
  def edit
  end

  # POST /laboratorists
  # POST /laboratorists.json
  def create
    @laboratorist = Laboratorist.new(laboratorist_params)

    respond_to do |format|
      if @laboratorist.save
        format.html { redirect_to @laboratorist, notice: 'Laboratorist was successfully created.' }
        format.json { render :show, status: :created, location: @laboratorist }
      else
        format.html { render :new }
        format.json { render json: @laboratorist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /laboratorists/1
  # PATCH/PUT /laboratorists/1.json
  def update
    respond_to do |format|
      if @laboratorist.update(laboratorist_params)
        format.html { redirect_to @laboratorist, notice: 'Laboratorist was successfully updated.' }
        format.json { render :show, status: :ok, location: @laboratorist }
      else
        format.html { render :edit }
        format.json { render json: @laboratorist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /laboratorists/1
  # DELETE /laboratorists/1.json
  def destroy
    @laboratorist.destroy
    respond_to do |format|
      format.html { redirect_to laboratorists_url, notice: 'Laboratorist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_laboratorist
      @laboratorist = Laboratorist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def laboratorist_params
      params.require(:laboratorist).permit(:identificador_laboratorista, :primer_nombre_persona, :segundo_nombre_persona, :apellido_paterno_persona, :apellido_materno_persona, :fecha_de_nacimiento, :prevision, :estado_civil, :grupo_sanguineo, :edad, :correo, :telefono, :avenida_calle_domicilio, :numero_domicilio, :departamento_domicilio, :comuna_domicilio, :ciudad_domicilio)
    end
end
