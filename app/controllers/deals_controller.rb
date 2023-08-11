class DealsController < ApplicationController
  before_action :set_deal, only: %i[show edit update destroy]
  # GET /deals or /deals.json
  def index
    @deals = @categories.deals.order(created_at: 'desc')
  end

  def new
    @deal = Deal.new
  end

  # POST /deals or /deals.json
  def create
    @deal = Deal.new(deal_params)
    puts "Deal = #{@deal.inspect}"
    @deal.author_id = current_user.id
    puts "Deal = #{@deal.inspect}"
    respond_to do |format|
      if @deal.save
        if @deal.categories.present?
          format.html { redirect_to @deal.categories.first, notice: 'Transaction was successfully added.' }
        else
          format.html do
            redirect_to root_path,
                        notice: 'Transaction was successfully added, but no category is associated with the deal.'
          end
        end
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deals/1 or /deals/1.json
  # def destroy
  #   @deal.destroy

  #   respond_to do |format|
  #     format.html { redirect_to  @deal.categories.first, notice: "Deal was successfully destroyed." }
  #     format.json { head :no_content }
  #   end
  # end

  private

  # Use callbacks to share common setup or constraints between actions.
  # def set_deal
  #   @deal = Deal.find(params[:id])
  # end

  # Only allow a list of trusted parameters through.
  def deal_params
    params.require(:deal).permit(:name, :amount, category_ids: [])
  end
end
