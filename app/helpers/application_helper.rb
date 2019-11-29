module ApplicationHelper
  def selected_services_by_category(services, category)
    services.select { |service| service.category == category }
  end

  def average(subscription)
    all_rating = []
    subscription.cotisations.each do |cotisation|
      cotisation.reviews.each do |review|
        all_rating << review.rating
      end
    end
    sum = all_rating.sum
    all_rating.count == 0 ? 0 : (sum / all_rating.count).round
  end
end
