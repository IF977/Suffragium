class CasasController < ApplicationController
  before_action :set_casa, only: [:show, :edit, :update, :destroy]

  # GET /casas
  # GET /casas.json
  def index
    @casas = Casa.all
  end

  # GET /casas/1
  # GET /casas/1.json
  def show
  end

  # GET /casas/new
  def new
    @casa = Casa.new
  end

  # GET /casas/1/edit
  def edit
  end

  # POST /casas
  # POST /casas.json
  def create
    @casa = Casa.new(casa_params)

    respond_to do |format|
      if @casa.save
        format.html { redirect_to @casa, notice: 'Casa was successfully created.' }
        format.json { render :show, status: :created, location: @casa }
      else
        format.html { render :new }
        format.json { render json: @casa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /casas/1
  # PATCH/PUT /casas/1.json
  def update
    respond_to do |format|
      if @casa.update(casa_params)
        format.html { redirect_to @casa, notice: 'Casa was successfully updated.' }
        format.json { render :show, status: :ok, location: @casa }
      else
        format.html { render :edit }
        format.json { render json: @casa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /casas/1
  # DELETE /casas/1.json
  def destroy
    @casa.destroy
    respond_to do |format|
      format.html { redirect_to casas_url, notice: 'Casa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_casa
      @casa = Casa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def casa_params
      params.require(:casa).permit(:nome)
    end
end
