class PotatosController < ApplicationController
  before_action :set_potato, only: %i[ show edit update destroy ]

  # GET /potatos or /potatos.json
  def index
    @potatos = Potato.all
  end

  # GET /potatos/1 or /potatos/1.json
  def show
  end

  # GET /potatos/new
  def new
    @potato = Potato.new
  end

  # GET /potatos/1/edit
  def edit
  end

  # POST /potatos or /potatos.json
  def create
    @potato = Potato.new(potato_params)

    respond_to do |format|
      if @potato.save
        format.html { redirect_to potato_url(@potato), notice: "Potato was successfully created." }
        format.json { render :show, status: :created, location: @potato }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @potato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /potatos/1 or /potatos/1.json
  def update
    respond_to do |format|
      if @potato.update(potato_params)
        format.html { redirect_to potato_url(@potato), notice: "Potato was successfully updated." }
        format.json { render :show, status: :ok, location: @potato }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @potato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /potatos/1 or /potatos/1.json
  def destroy
    @potato.destroy

    respond_to do |format|
      format.html { redirect_to potatos_url, notice: "Potato was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_potato
      @potato = Potato.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def potato_params
      params.require(:potato).permit(:kg, :brand, :price)
    end
end
