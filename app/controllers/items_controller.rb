class ItemsController < ApplicationController
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

  def show
  end
  
  def edit
  end 

  def update
  end

  def destory
    item = Item.find(params[:id])
    item.destory
  end

  private
  def item_params
    params.require(:item).permit(:name, :price, :detail)
  end
end
