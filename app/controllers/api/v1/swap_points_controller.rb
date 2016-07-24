class Api::V1::SwapPointsController < ApplicationController

  rescue_from Exception, with: :handle_500 unless Rails.env.development?

  def index
    pair = params[:pair]
    start_date = params[:start_date]
    end_date = params[:end_date]

    raise "empty param pair" if pair.empty?
    raise "empty param start_date" if start_date.empty?
    raise "empty param end_date" if end_date.empty?

    @swap_points = SwapPoint
      .joins(:currency_pair)
      .where('currency_pairs.name = ?', pair)
    render json: "{\"swap_points\":" + @swap_points.to_json(:include => :trader) + "}"
  end

  def handle_500(exception = nil)
    logger.info "Rendering 500 with exception: #{exception.message}" if exception
    render json: { error: '500 error' }, status: 500
  end
end
