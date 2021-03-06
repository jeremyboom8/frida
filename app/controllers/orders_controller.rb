class OrdersController < ApplicationController
  skip_after_action :verify_authorized
  def show
    @order = Order.find(params[:id])
    @course = Course.find(@order.course_id)
  end

  def create
    @course = Course.find(params[:course_id])
    order  = Order.create(course_id: @course.id, amount: @course.price, state: 'pending')
    redirect_to new_order_payment_path(order)
  end
end
