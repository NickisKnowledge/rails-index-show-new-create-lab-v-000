class CouponsController < ApplicationController
  before_action :set_coupon, only: :show

  def index
    @coupons = Coupon.all
  end

  def show
  end

  def new
  end

  def create
    coupon = Coupon.create(store: params[:store],
                           coupon_code: params[:coupon_code])

    redirect_to coupon
  end


  private
    def set_coupon
      @coupon = Coupon.find(params[:id])
    end
end
