class WelcomeController < ApplicationController
  def index
  	@procedures = Procedure.all
  end

  def search_results
  	@procedures = Procedure.all
  	if params[:procedure].present? && params[:city].present?
	  	procedure = Procedure.find(params[:procedure])
	  	@doctors  = procedure.doctors.where('city = ?', params[:city])
	  end
  end
end
