class HardwaresController < ApplicationController
  before_action :set_hardware, only: %i[ show edit update destroy ]
  protect_from_forgery


  # GET /hardwares or /hardwares.json
  def index
    @hardwares = Hardware.all
    @fornecedors = Fornecedor.all
  end

  # GET /hardwares/1 or /hardwares/1.json
  def show
  end

  # GET /hardwares/new
  def new
    @hardware = Hardware.new
  end

  # GET /hardwares/1/edit
  def edit
  end

  # POST /hardwares or /hardwares.json
  def create
    @parametros = (hardware_params)

    @produto = Produto.new(nome: @parametros["nome"], preco: @parametros["preco"],
       descricao: @parametros["descricao"], fornecedor_id: @parametros["fornecedor_id"])
    @produto.save

    @hardware = Hardware.new(metodo_montagem:@parametros["metodo_montagem"],
       produto_id: @produto.id)

    respond_to do |format|
      if @hardware.save
        format.html { redirect_to @hardware, notice: "Hardware was successfully created." }
        format.json { render :show, status: :created, location: @hardware }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @hardware.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hardwares/1 or /hardwares/1.json
  def update
    respond_to do |format|
      if @hardware.update(hardware_params)
        format.html { redirect_to @hardware, notice: "Hardware was successfully updated." }
        format.json { render :show, status: :ok, location: @hardware }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @hardware.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hardwares/1 or /hardwares/1.json
  def destroy
    @hardware.destroy
    respond_to do |format|
      format.html { redirect_to hardwares_url, notice: "Hardware was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hardware
      @hardware = Hardware.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hardware_params
      params.require(:hardware).permit(:metodo_montagem, :nome, :preco, :fornecedor_id, :descricao)
    end
end
