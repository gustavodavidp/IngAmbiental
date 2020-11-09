class LugaresController < ApplicationController
  before_action :set_lugare, only: [:show, :edit, :update, :destroy]
  before_action :require_admin_params!, only: [:new, :edit, :create, :update,  :destroy]
  # GET /lugares
  # GET /lugares.json
  def index
    if params[:search]
      @lugares = Lugare.search(params[:search]).order("created_at DESC").page(params[:page]).per(5)
    else
      @lugares = Lugare.order('created_at DESC').page(params[:page]).per(5)
    end
  end

  # GET /lugares/1
  # GET /lugares/1.json
  def show
  end

  # GET /lugares/new
  def new
    @lugare = Lugare.new
  end

  # GET /lugares/1/edit
  def edit
  end

  # POST /lugares
  # POST /lugares.json
  def create
    @lugare = Lugare.new(lugare_params)

    respond_to do |format|
      if @lugare.save
        format.html { redirect_to @lugare, notice: 'Lugare was successfully created.' }
        format.json { render :show, status: :created, location: @lugare }
      else
        format.html { render :new }
        format.json { render json: @lugare.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lugares/1
  # PATCH/PUT /lugares/1.json
  def update
    respond_to do |format|
      if @lugare.update(lugare_params)
        format.html { redirect_to @lugare, notice: 'Lugare was successfully updated.' }
        format.json { render :show, status: :ok, location: @lugare }
      else
        format.html { render :edit }
        format.json { render json: @lugare.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lugares/1
  # DELETE /lugares/1.json
  def destroy
    @lugare.destroy
    respond_to do |format|
      format.html { redirect_to lugares_url, notice: 'Lugare was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def require_admin_params!
        unless current_user.admin == true
            redirect_to root_path, status: 401
        end
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_lugare
      @lugare = Lugare.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lugare_params
      params.require(:lugare).permit(:nombre, :descripcion)
    end
end
