class Doctor < ActiveRecord::Base

	belongs_to :procedure

	letsrate_rateable

	def self.sort_by_rating(order)
		if order == 'rating'
			joins("LEFT JOIN rating_caches ON rating_caches.cacheable_id = doctors.id AND rating_caches.dimension IS NULL AND rating_caches.cacheable_type = 'Doctor'").order('rating_caches.avg DESC')
		elsif order == 'price'
			order('fee DESC')
		elsif order == 'popularity'
			joins(:rate_average_without_dimension).order('rating_caches.avg DESC')
		end	
	end
end
