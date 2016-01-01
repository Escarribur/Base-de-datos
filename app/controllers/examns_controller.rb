class ExamnsController < ApplicationController
  before_action :set_examn, only: [:show, :edit, :update, :destroy]

  # GET /examns
  # GET /examns.json
  def index
    @examns = Examn.all
  end

  # GET /examns/1
  # GET /examns/1.json
  def show
  end

  # GET /examns/new
  def new
    @examn = Examn.new
  end

  # GET /examns/1/edit
  def edit
  end

  # POST /examns
  # POST /examns.json
  def create
    @examn = Examn.new(examn_params)

    respond_to do |format|
      if @examn.save
        format.html { redirect_to @examn, notice: 'Examn was successfully created.' }
        format.json { render :show, status: :created, location: @examn }
      else
        format.html { render :new }
        format.json { render json: @examn.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /examns/1
  # PATCH/PUT /examns/1.json
  def update
    respond_to do |format|
      if @examn.update(examn_params)
        format.html { redirect_to @examn, notice: 'Examn was successfully updated.' }
        format.json { render :show, status: :ok, location: @examn }
      else
        format.html { render :edit }
        format.json { render json: @examn.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /examns/1
  # DELETE /examns/1.json
  def destroy
    @examn.destroy
    respond_to do |format|
      format.html { redirect_to examns_url, notice: 'Examn was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_examn
      @examn = Examn.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def examn_params
      params.require(:examn).permit(:id_muestra, :nombre_examen, :descripcion_examen, :precio_examen)
    end
end
