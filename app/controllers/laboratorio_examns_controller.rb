class LaboratorioExamnsController < ApplicationController
  before_action :set_laboratorio_examn, only: [:show, :edit, :update, :destroy]

  # GET /laboratorio_examns
  # GET /laboratorio_examns.json
  def index
    @laboratorio_examns = LaboratorioExamn.all
  end

  # GET /laboratorio_examns/1
  # GET /laboratorio_examns/1.json
  def show
  end

  # GET /laboratorio_examns/new
  def new
    @laboratorio_examn = LaboratorioExamn.new
  end

  # GET /laboratorio_examns/1/edit
  def edit
  end

  # POST /laboratorio_examns
  # POST /laboratorio_examns.json
  def create
    @laboratorio_examn = LaboratorioExamn.new(laboratorio_examn_params)

    respond_to do |format|
      if @laboratorio_examn.save
        format.html { redirect_to @laboratorio_examn, notice: 'Laboratorio examn was successfully created.' }
        format.json { render :show, status: :created, location: @laboratorio_examn }
      else
        format.html { render :new }
        format.json { render json: @laboratorio_examn.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /laboratorio_examns/1
  # PATCH/PUT /laboratorio_examns/1.json
  def update
    respond_to do |format|
      if @laboratorio_examn.update(laboratorio_examn_params)
        format.html { redirect_to @laboratorio_examn, notice: 'Laboratorio examn was successfully updated.' }
        format.json { render :show, status: :ok, location: @laboratorio_examn }
      else
        format.html { render :edit }
        format.json { render json: @laboratorio_examn.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /laboratorio_examns/1
  # DELETE /laboratorio_examns/1.json
  def destroy
    @laboratorio_examn.destroy
    respond_to do |format|
      format.html { redirect_to laboratorio_examns_url, notice: 'Laboratorio examn was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_laboratorio_examn
      @laboratorio_examn = LaboratorioExamn.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def laboratorio_examn_params
      params.require(:laboratorio_examn).permit(:id_laboratorio, :id_examen)
    end
end
