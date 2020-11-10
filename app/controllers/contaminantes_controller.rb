class ContaminantesController < ApplicationController
  before_action :set_contaminante, only: [:show, :edit, :update, :destroy]

  # GET /contaminantes
  # GET /contaminantes.json
  def index
    @contaminantes = Contaminante.all
  end

  # GET /contaminantes/1
  # GET /contaminantes/1.json
  def show
  end

  # GET /contaminantes/new
  def new
    @contaminante = Contaminante.new
  end

  # GET /contaminantes/1/edit
  def edit
  end

  # POST /contaminantes
  # POST /contaminantes.json
  def create
    @contaminante = Contaminante.new(contaminante_params)

    respond_to do |format|
      if @contaminante.save
        format.html { redirect_to @contaminante, notice: 'Contaminante was successfully created.' }
        format.json { render :show, status: :created, location: @contaminante }
      else
        format.html { render :new }
        format.json { render json: @contaminante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contaminantes/1
  # PATCH/PUT /contaminantes/1.json
  def update
    respond_to do |format|
      if @contaminante.update(contaminante_params)
        format.html { redirect_to @contaminante, notice: 'Contaminante was successfully updated.' }
        format.json { render :show, status: :ok, location: @contaminante }
      else
        format.html { render :edit }
        format.json { render json: @contaminante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contaminantes/1
  # DELETE /contaminantes/1.json
  def destroy
    @contaminante.destroy
    respond_to do |format|
      format.html { redirect_to contaminantes_url, notice: 'Contaminante was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contaminante
      @contaminante = Contaminante.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contaminante_params
      params.require(:contaminante).permit(:nombre, :descripcion, :nivel, :lugare_id)
    end
end
