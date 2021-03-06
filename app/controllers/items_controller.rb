class ItemsController < ApplicationController
  before_action :set_item, only: [:edit, :update, :destroy]

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to items_path
    else
      redirect_to new_item_path
    end
  end
  
  def edit
  end

  def update
    if @item.update(item_params)
      redirect_to items_path
    end
  end

  def destroy
    if @item.destroy
      redirect_to items_path
    end
  end

  def order
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :price, :detail)
  end
end
