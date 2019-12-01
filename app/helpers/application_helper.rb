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

  def reviews_display (subscription)
    all_reviews = []
    subscription.cotisations.each do |cotisation|
      cotisation.reviews.each do |review|
        all_reviews << review.content
      end
    end
    first_review = all_reviews.sample(1)
    second_review = all_reviews.sample(1)
  end
end
