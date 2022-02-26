class V1::SharesController < ApplicationController
  def index
    shares = Share.all
    render json: shares
  end

  def create
    share = Share.new(share_params)
    if share.save
      render json: share
    else
      render json: share.errors
    end
  end

  def destroy
    share = Share.find(params[:id])
    render json: share if share.destroy
  end

  private

  # ストロングパラメーターの設定
  def share_params
    params.require(:share).permit(:title, :user_id)
  end
end
