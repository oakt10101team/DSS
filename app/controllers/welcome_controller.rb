class WelcomeController < ApplicationController
  def index
  end

  def search_results
  	if params[:procedure].present? && params[:city].present?
	  	procedure = Procedure.find(params[:procedure])
	  	@doctors  = procedure.doctors.where('city = ?', params[:city])
	  end
  end
end
