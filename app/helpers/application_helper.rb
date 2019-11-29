module ApplicationHelper
  def selected_services_by_category(services, category)
    services.select { |service| service.category == category }
  end

  def average(cotisation)
    all_rating = []
    cotisation.reviews.each do |review|
      all_rating << review.stars
    end
    sum = all_rating.sum
    all_rating.count == 0 ? 0 : (sum / all_rating.count).round
  end
end
