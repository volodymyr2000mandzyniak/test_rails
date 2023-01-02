class ItemsController < ApplicationController
  layout false 
  skip_before_action :verify_authenticity_token
  before_action :find_item, only: %i[show edit update destroy upvote]
  before_action :admin?, only: %i[edit update new create destroy]

  def index
    @items = Item.all    
  end

  def create
    item = Item.create(items_params)
    if item.persisted?  
      redirect_to items_path 
    else 
      render json: item.errors, statud: :unprocessable_entity
    end
  end

  def new; end

  def show  
    render body: 'Page not found', status: 404 unless @item
  end

  def edit 
    render body: 'Page not found', status: 404 unless @item
  end

  def update
    if @item.update(items_params) 
      redirect_to item_path
    else
      render json: items.errors, status: :unprocessable_entity
    end
  end

  def destroy 
    if @item.destroy.destroyed?
      redirect_to items_path
    else
      render json: item.errors, status: :unprocessable_entity
    end
  end

  def expensive
    @items = Item.where('price > 50')
    render :index
  end

  def upvote
    @item.increment! :votes_count
    redirect_to items_path
  end
  
  private

  def items_params
    params.permit(:price, :name, :real, :weight, :description)
  end

  def find_item
    @item = Item.where(id: params[:id]).first
  end

  def admin?
    true
    # render json: 'Access deneid', status: :forbidden unless params[:admin]
  end
end
