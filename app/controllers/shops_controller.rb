class ShopsController < ApplicationController

  before_action :find_shop, only: [:show, :edit, :update, :destroy]

  def index
    @shops = Shop.all
  end

  def new
    @shop = Shop.new
  end

  def create
    @shop = Shop.new(params_shop)
    if @shop.save
      redirect_to root_path, notice: "店鋪建立完成"
    else
      render :new
    end
  end

  def show 
  end

  def edit
  end

  def update
    if @shop.update(params_shop)
      redirect_to root_path, notice: "店家資訊更新完成"
    else
      render :edit
    end
  end

  def destroy
    @shop.destroy
    redirect_to root_path, notice: "店家已被移除"
  end


  private
  def params_shop
    params.require(:shop).permit(:brand, :product, :amount)
  end

  def find_shop
    @shop = Shop.find(params[:id])
  end

end
