class WelcomeController < ApplicationController
  def index
  end

  def search_results
  	order = params[:order].present? ? params[:order] : 'rating'
  	if params[:procedure].present? && params[:city].present?
	  	procedure = Procedure.find(params[:procedure])
	  	@doctors  = procedure.doctors.where('LOWER(city) = ?', params[:city].downcase).sort_by_rating(order)
	  end
  end
end
