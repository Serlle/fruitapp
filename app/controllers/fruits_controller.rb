class FruitsController < ApplicationController
  before_action :set_fruit, only: %i[ show edit update destroy ]

  def index
    @fruits = Fruit.all
  end

  def show
  end

  def new
    @fruit = Fruit.new
  end

  def edit
  end

  def create
    @fruit = Fruit.new(fruit_params)

    respond_to do |format|
      if @fruit.save
        format.html { redirect_to fruit_url(@fruit), notice: "Fruit was successfully created." }
        format.json { render :show, status: :created, location: @fruit }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fruit.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @fruit.update(fruit_params)
        format.html { redirect_to fruit_url(@fruit), notice: "Fruit was successfully updated." }
        format.json { render :show, status: :ok, location: @fruit }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fruit.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @fruit.destroy

    respond_to do |format|
      format.html { redirect_to fruits_url, notice: "Fruit was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fruit
      @fruit = Fruit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fruit_params
      params.require(:fruit).permit(:name, :color, :flavor, :weight, :price, :availability, :image_url)
    end
end
