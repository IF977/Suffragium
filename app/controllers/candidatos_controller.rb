class CasasController < ApplicationController
  before_action :set_casa, only: [:show, :edit, :update, :destroy]

  # GET /casas
  # GET /casas.json
  def index
    @candidatos = Candidatos.all
  end

  # GET /casas/1
  # GET /casas/1.json
  def show
  end

  # GET /casas/new
  def new
    @candidatos = Candidatos.new
  end

  # GET /casas/1/edit
  def edit
  end

  # POST /casas
  # POST /casas.json
  def create
    @candidatos = Candidatos.new(candidatos_params)

    respond_to do |format|
      if @candidatos.save
        format.html { redirect_to @candidatos, notice: 'Candidatos was successfully created.' }
        format.json { render :show, status: :created, location: @candidatos }
      else
        format.html { render :new }
        format.json { render json: @candidatos.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /casas/1
  # PATCH/PUT /casas/1.json
  def update
    respond_to do |format|
      if @candidatos.update(candidatos_params)
        format.html { redirect_to @candidatos, notice: 'Candidatos was successfully updated.' }
        format.json { render :show, status: :ok, location: @candidatos }
      else
        format.html { render :edit }
        format.json { render json: @candidatos.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /casas/1
  # DELETE /casas/1.json
  def destroy
    @candidatos.destroy
    respond_to do |format|
      format.html { redirect_to candidatos_url, notice: 'Candidatos was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_candidato
      @candidato = Candidato.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def candidato_params
      params.require(:candidato).permit(:nome)
    end
end
