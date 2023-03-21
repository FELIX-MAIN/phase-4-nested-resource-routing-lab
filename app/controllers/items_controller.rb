class ItemsController < ApplicationController

  def index
    if params[:user_id]
      user = User.find(params[:user_id])
      reviews = user.reviews
    else
      reviews = Review.all
    end
    render json: reviews, include: :user
  end
  
  def show
    item = Item.find(params[:id])
    render json: item, include: :user
  end

  def create
    item = Item.create(item_params)
    render json: item, status: :created
  end

end
