class TranxactionsController < ApplicationController
  before_action :set_tranxaction, only: %i[ show edit update destroy ]

  # GET /tranxactions or /tranxactions.json
  def index
    @tranxactions = Tranxaction.all
  end

  # GET /tranxactions/1 or /tranxactions/1.json
  def show
  end

  # GET /tranxactions/new
  def new
    @tranxaction = Tranxaction.new
  end

  # GET /tranxactions/1/edit
  def edit
  end

  # POST /tranxactions or /tranxactions.json
  def create
    @tranxaction = Tranxaction.new(tranxaction_params)

    respond_to do |format|
      if @tranxaction.save
        format.html { redirect_to tranxaction_url(@tranxaction), notice: "Tranxaction was successfully created." }
        format.json { render :show, status: :created, location: @tranxaction }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tranxaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tranxactions/1 or /tranxactions/1.json
  def update
    respond_to do |format|
      if @tranxaction.update(tranxaction_params)
        format.html { redirect_to tranxaction_url(@tranxaction), notice: "Tranxaction was successfully updated." }
        format.json { render :show, status: :ok, location: @tranxaction }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tranxaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tranxactions/1 or /tranxactions/1.json
  def destroy
    @tranxaction.destroy

    respond_to do |format|
      format.html { redirect_to tranxactions_url, notice: "Tranxaction was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tranxaction
      @tranxaction = Tranxaction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tranxaction_params
      params.require(:tranxaction).permit(:name, :amount)
    end
end
